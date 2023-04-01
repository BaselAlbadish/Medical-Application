import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/skill_repositories.dart';
import 'package:meta/meta.dart';

import '../../../../../../configure_di.dart';
import '../../../../../../core/error/failures.dart';
import '../../../../core/token/token_repository.dart';
import '../../../../core/utility/profile_store.dart';
import '../../../domain/entities/profile/profile_model.dart';

part 'skills_event.dart';

part 'skills_state.dart';

part 'skills_bloc.freezed.dart';

class SkillsBloc extends Bloc<SkillsEvent, SkillsState> {
  final SkillRepository skillRepository;

  SkillsBloc(this.skillRepository) : super(SkillsState.initial(getIt<ProfileStore>().getProfile()!.skillInfo)) {
    on<EditEvent>((event, emit) {
      emit(state.copyWith(skill: event.skill));
    });

    on<AddEvent>((event, emit) async {
      if (isValid(state)) {
        String token = await getIt<TokenRepository>().getToken();
        final response = await skillRepository.addSkills(token.toString(), state.skill);
        if (response.isRight()) {
          List<Skill> list = state.skills;
          Skill skill = state.skill.copyWith(id: response.getOrElse(() => 0));
          list.add(skill);
          emit(state.copyWith(addSkillResponse: some(response), skills: list));
        } else {
          emit(state.copyWith(addSkillResponse: some(response)));
        }
      }
    });

    on<UpdateEvent>((event, emit) async {
      if (isValid(state)) {
        String token = await getIt<TokenRepository>().getToken();
        final response = await skillRepository.updateSkills(token.toString(), state.skill);
        if (response.isRight()) {
          List<Skill> list = state.skills;
          int index = getIndexById(state.skill.id!);
          list.insert(index, state.skill);
          emit(state.copyWith(updateSkillResponse: some(response), skills: list));
        } else {
          emit(state.copyWith(updateSkillResponse: some(response)));
        }
      }
    });

    on<DeleteEvent>((event, emit) async {
      String token = await getIt<TokenRepository>().getToken();
      final response = await skillRepository.deleteSkills(token.toString(), event.skill.id!);
      if (response.isRight()) {
        List<Skill> list = state.skills;
        list.remove(event.skill);
        emit(state.copyWith(deleteSkillResponse: some(response), skills: list));
      } else {
        emit(state.copyWith(deleteSkillResponse: some(response)));
      }
    });

    on<EditSkillName>((event, emit) {
      if (event.name.isEmpty) {
        emit(state.copyWith(nameErrorMessage: "please enter skill name"));
      } else {
        emit(state.copyWith(nameErrorMessage: "", skill: state.skill.copyWith(name: event.name)));
      }
    });

    on<EditSkillLevel>((event, emit) {
      if (event.level.isEmpty) {
        emit(state.copyWith(levelErrorMessage: "please enter skill level"));
      }else if (int.parse(event.level) > 100){
        emit(state.copyWith(levelErrorMessage: "Your level must be less than 100"));
      }
      else {
        emit(state.copyWith(levelErrorMessage: "", skill: state.skill.copyWith(level: event.level)));
      }
    });
  }

  Future<List<String>> getSkillsSuggestions(String pattern) async {
    List<String> items = getIt<ProfileStore>().getSkills();
    if (pattern.isNotEmpty) {
      List<String> suggestions = [];
      for (int i = 0; i < items.length; i++) {
        if (items[i].toLowerCase().contains(pattern.toString().toLowerCase())) {
          suggestions.add(items[i]);
        }
      }
      return suggestions;
    } else {
      return items;
    }
  }


  bool isValid(SkillsState state) {
    if (state.skill.name != "" && state.skill.level != "") {
      return true;
    } else {
      return false;
    }
  }

  int getIndexById(int id) {
    List<Skill> list = state.skills;
    for (int i = 0; i < list.length; i++) {
      if (list[i].id == id) {
        return i;
      }
    }
    return 00;
  }
}
