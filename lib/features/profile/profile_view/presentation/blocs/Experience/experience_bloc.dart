import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/experience_repositories.dart';
import '../../../../../../configure_di.dart';
import '../../../../../../core/error/failures.dart';
import '../../../../core/token/token_repository.dart';
import '../../../../core/utility/profile_store.dart';
import '../../../domain/entities/profile/profile_model.dart';

part 'experience_event.dart';

part 'experience_state.dart';

part 'experience_bloc.freezed.dart';

class ExperienceBloc extends Bloc<ExperienceEvent, ExperienceState> {
  final ExperienceRepository experienceRepository;

  ExperienceBloc({required this.experienceRepository})
      : super(ExperienceState.initial(getIt<ProfileStore>().getProfile()!.experienceInfo)) {

    on<AddEvent>((event, emit) async {
      if (isValid(state)) {
        String token = await getIt<TokenRepository>().getToken();
        final response = await experienceRepository.addExperience(token.toString(), state.experience);
        if (response.isRight()) {
          List<Experience> list = state.experiences;
          Experience experience = state.experience.copyWith(id: response.getOrElse(() => 0));
          list.add(experience);
          emit(state.copyWith(addExperienceResponse: some(response), experiences: list));
        } else {
          emit(state.copyWith(addExperienceResponse: some(response)));
        }
      }
    });

    on<UpdateEvent>((event, emit) async {
      if (isValid(state)) {
        String token = await getIt<TokenRepository>().getToken();
        final response = await experienceRepository.updateExperience(token.toString(), state.experience);
        if (response.isRight()) {
          List<Experience> list = state.experiences;
          int index = getIndexById(state.experience.id!);
          list.insert(index, state.experience);
          emit(state.copyWith(updateExperienceResponse: some(response), experiences: list));
        } else {
          emit(state.copyWith(updateExperienceResponse: some(response)));
        }
      }
    });

    on<DeleteEvent>((event, emit) async {
      String token = await getIt<TokenRepository>().getToken();
      final response = await experienceRepository.deleteExperience(token.toString(), event.experience.id!);
      if (response.isRight()) {
        List<Experience> list = state.experiences;
        list.remove(event.experience);
        emit(state.copyWith(deleteExperienceResponse: some(response), experiences: list));
      } else {
        emit(state.copyWith(deleteExperienceResponse: some(response)));
      }
    });

    on<EditEvent>((event, emit) {
      emit(state.copyWith(experience: event.experience));
    });

    on<EditPosition>((event, emit) {
      if (event.position.isEmpty) {
        emit(state.copyWith(positionErrorMessage: "please enter your position"));
      } else {
        emit(state.copyWith(
            positionErrorMessage: "", experience: state.experience.copyWith(positionName: event.position)));
      }
    });

    on<EditCompanyName>((event, emit) {
      if (event.companyName.isEmpty) {
        emit(state.copyWith(companyNameErrorMessage: "please enter your company name"));
      } else {
        emit(state.copyWith(
            companyNameErrorMessage: "", experience: state.experience.copyWith(companyName: event.companyName)));
      }
    });

    on<EditEmployeeType>((event, emit) {
      if (event.type.isEmpty) {
        emit(state.copyWith(typeErrorMessage: "please enter your Employee type"));
      } else {
        emit(state.copyWith(typeErrorMessage: "", experience: state.experience.copyWith(employeeType: event.type)));
      }
    });

    on<EditLocation>((event, emit) {
      if (event.location.country.name.isEmpty) {
        emit(state.copyWith(locationErrorMessage: "please enter your location"));
      } else {
        emit(state.copyWith(locationErrorMessage: "", experience: state.experience.copyWith(location: event.location)));
      }
    });

    on<EditStartDate>((event, emit) {
      emit(state.copyWith(experience: state.experience.copyWith(startDate: event.startDate)));
    });

    on<EditEndDate>((event, emit) {
      emit(state.copyWith(experience: state.experience.copyWith(endDate: event.endDate)));
    });

    on<EditStillWorking>((event, emit) {
      emit(state.copyWith(experience: state.experience.copyWith(stillWorking: event.stillWorking)));
    });
  }

  Future<List<Location>> getLocationSuggestions(String pattern) async {
    List<Location> items = await getIt<ProfileStore>().getLocations();
    if (pattern.isNotEmpty) {
      List<Location> suggestions = [];
      for (int i = 0; i < items.length; i++) {
        if (items[i].country.name.toLowerCase().contains(pattern.toString().toLowerCase())) {
          suggestions.add(items[i]);
        }
      }
      return suggestions;
    } else {
      return items;
    }
  }

  Future<List<Position>> getPositionSuggestions(String pattern) async {
    List<Position> items = await getIt<ProfileStore>().getPositions();
    if (pattern.isNotEmpty) {
      List<Position> suggestions = [];
      for (int i = 0; i < items.length; i++) {
        if (items[i].name.toLowerCase().contains(pattern.toString().toLowerCase())) {
          suggestions.add(items[i]);
        }
      }
      return suggestions;
    } else {
      return items;
    }
  }

  Future<List<Company>> getCompaniesSuggestions(String pattern) async {
    List<Company> items = await getIt<ProfileStore>().getCompanyNames();
    if (pattern.isNotEmpty) {
      List<Company> suggestions = [];
      for (int i = 0; i < items.length; i++) {
        if (items[i].name.toLowerCase().contains(pattern.toString().toLowerCase())) {
          suggestions.add(items[i]);
        }
      }
      return suggestions;
    } else {
      return items;
    }
  }

  getEmployeeTypesSuggestions(String pattern) {
    List<String> items = getIt<ProfileStore>().getEmployeeTypes();
    if (pattern.isNotEmpty) {
      List<String> suggestions = [];
      for (int i = 0; i < items.length; i++) {
        if (pattern.toString().toLowerCase() == items[i].toLowerCase().substring(0, pattern.length)) {
          suggestions.add(items[i]);
        }
      }
      return suggestions;
    } else {
      return items;
    }
  }

  int getIndexById(int id) {
    List<Experience> list = state.experiences;
    for (int i = 0; i < list.length; i++) {
      if (list[i].id == id) {
        return i;
      }
    }
    return 00;
  }

  bool isValid(ExperienceState state) {
    if (state.experience.location != null &&
        state.experience.companyName != null &&
        state.experience.positionName != null &&
        state.experience.employeeType != null) {
      return true;
    } else {
      return false;
    }
  }
}
