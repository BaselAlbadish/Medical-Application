import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';
import 'package:mdcin_ca/features/auth/signup/domain/repositories/individual_repository.dart';

import '../../../utility/input_stash.dart';

part 'education_bloc_event.dart';
part 'education_bloc_state.dart';
part 'education_bloc_bloc.freezed.dart';

class EducationBloc extends Bloc<EducationEvent, EducationState> {
  final IndividualRepository repository;

  EducationBloc(this.repository) : super(EducationState.initial()) {
    // fetching data
    _getUniversities();
    _getMajors();
    _getMinors();

    on<_OnNextIsPressed>(_onNextIsPressed);
    on<_OnUniversitySelection>(_onUniversitySelection);
    // on<_OnStillWorkingIsSelected>(_onStillWorkingIsSelected);
  }

  void _onNextIsPressed(_OnNextIsPressed event, Emitter emit) {
    emit(state.copyWith(
      isShowingErrorMessages: true,
      componentIsValid: true,
    ));
  }

  void _getUniversities() async {
    InputStash.repositoryUniversities = await repository.getAllUniversities();
  }

  void _getDegrees(int id) async {
    InputStash.repositoryDegree =
        await repository.getDegreeForSpecificUniversity(id);
  }

  void _getMajors() async {
    InputStash.repositoryMajors = await repository.getAllMajors();
  }

  void _getMinors() async {
    InputStash.repositoryMinors = await repository.getAllMinors();
  }

  void _onUniversitySelection(
      _OnUniversitySelection event, Emitter emit) async {
    int selectedUniversity = event.id;
    _getDegrees(selectedUniversity);
  }

  // void _onStillWorkingIsSelected(
  //     _OnStillWorkingIsSelected event, Emitter emit) async {
  //   emit(state.copyWith(
  //     isStillWorking: !state.isStillWorking,
  //   ));
  // }



  Future<List<University>> fetchUniversities(String query) {
    if (InputStash.repositoryUniversities != null) {
      return Future.value(InputStash.repositoryUniversities!
          .getOrElse(() => List.empty())
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList());
    } else {}
    return repository
        .getAllUniversities()
        .then((value) => value.getOrElse(() => List.empty()))
        .then(
      (value) {
        InputStash.repositoryUniversities = right(value);
        return value;
      },
    );
  }

  Future<List<Degree>> fetchDegrees(String query, int id) {
    if (InputStash.repositoryDegree != null) {
      return Future.value(InputStash.repositoryDegree!
          .getOrElse(() => List.empty())
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList());
    } else {}
    return repository
        .getDegreeForSpecificUniversity(id)
        .then((value) => value.getOrElse(() => List.empty()))
        .then(
      (value) {
        InputStash.repositoryDegree = right(value);
        return value;
      },
    );
  }

  Future<List<Major>> fetchMajors(String query) {
    if (InputStash.repositoryUniversities != null) {
      return Future.value(InputStash.repositoryMajors!
          .getOrElse(() => List.empty())
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList());
    } else {}
    return repository
        .getAllMajors()
        .then((value) => value.getOrElse(() => List.empty()))
        .then(
      (value) {
        InputStash.repositoryMajors = right(value);
        return value;
      },
    );
  }

  Future<List<Minor>> fetchMinors(String query) {
    if (InputStash.repositoryMinors != null) {
      return Future.value(InputStash.repositoryMinors!
          .getOrElse(() => List.empty())
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList());
    } else {}
    return repository
        .getAllMinors()
        .then((value) => value.getOrElse(() => List.empty()))
        .then(
      (value) {
        InputStash.repositoryMinors = right(value);
        return value;
      },
    );
  }
}

