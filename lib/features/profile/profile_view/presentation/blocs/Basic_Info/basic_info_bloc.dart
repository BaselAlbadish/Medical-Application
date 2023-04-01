import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/basicInfo_repositories.dart';
import '../../../../../../configure_di.dart';
import '../../../../../../core/error/failures.dart';
import '../../../../core/token/token_repository.dart';
import '../../../../core/utility/profile_store.dart';

part 'basic_info_state.dart';
part 'basic_info_event.dart';
part 'basic_info_bloc.freezed.dart';

class BasicInfoBloc extends Bloc<BasicInfoEvent, BasicInfoState> {
  final BasicInfoRepository basicInfoRepository;

  BasicInfoBloc({required this.basicInfoRepository})
      : super(BasicInfoState.initial(getIt<ProfileStore>().getProfile()!.basicInfo)) {
    on<SaveEvent>((event, emit) async {
      if (isValidState(state)) {
        String token = await getIt<TokenRepository>().getToken();
        final response = await basicInfoRepository.updateBasicInfo(token.toString(), state.basicInfo);
        if (response.isRight()) {
          getIt<TokenRepository>().setToken(response.getOrElse(() => ""));
        }
        emit(state.copyWith(updateBasicInfoResponse: some(response)));
      }
    });

    on<EditFirstName>((event, emit) {
      if (event.firstName.isEmpty) {
        emit(state.copyWith(firstNameErrorMessage: "please enter your first name"));
      } else {
        emit(
            state.copyWith(basicInfo: state.basicInfo.copyWith(firstName: event.firstName), firstNameErrorMessage: ""));
      }
    });

    on<EditLastName>((event, emit) {
      if (event.lastName.isEmpty) {
        emit(state.copyWith(lastNameErrorMessage: "please enter your last name"));
      } else {
        emit(state.copyWith(basicInfo: state.basicInfo.copyWith(lastName: event.lastName), lastNameErrorMessage: ""));
      }
    });

    on<EditPrimaryProfession>((event, emit) {
      if (event.profession.name.isEmpty) {
        emit(state.copyWith(professionErrorMessage: "please enter your profession"));
      } else {
        emit(state.copyWith(
            basicInfo: state.basicInfo.copyWith(primaryProfession: event.profession), professionErrorMessage: ""));
      }
    });

    on<EditLocation>((event, emit) async {
      if (event.location.country.name.isEmpty) {
        emit(state.copyWith(locationErrorMessage: "please choose your location"));
      } else {
        emit(state.copyWith(
            basicInfo: state.basicInfo.copyWith(primaryLocation: event.location), locationErrorMessage: ""));
      }
    });

    on<EditGender>((event, emit) {
      if (event.gender.isEmpty) {
        emit(state.copyWith(genderErrorMessage: "please enter your gender"));
      } else {
        emit(state.copyWith(basicInfo: state.basicInfo.copyWith(gender: event.gender), genderErrorMessage: ""));
      }
    });

    on<EditBirthday>((event, emit) {
      emit(state.copyWith(basicInfo: state.basicInfo.copyWith(birthDate: event.birthday)));
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

  Future<List<Profession>> getProfessionSuggestions(String pattern) async {
    List<Profession> items = await getIt<ProfileStore>().getProfessions();
    if (pattern.isNotEmpty) {
      List<Profession> suggestions = [];
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

  getGenderSuggestions(String pattern) {
    List<String> items = [" Male ", " Female "];
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

  String getFormattedData() {
    if (state.basicInfo.birthDate!.day != null &&
        state.basicInfo.birthDate!.month != null &&
        state.basicInfo.birthDate!.year != null) {
      String dateString =
          '${state.basicInfo.birthDate!.day.toString()} - ${state.basicInfo.birthDate!.month.toString()} - ${state.basicInfo.birthDate!.year.toString()}';
      return dateString;
    } else {
      return "-- / -- / ----";
    }
  }

  bool isValidState(BasicInfoState basicInfoState) {
    if (basicInfoState.basicInfo.primaryProfession != null &&
        basicInfoState.basicInfo.primaryLocation != null &&
        basicInfoState.basicInfo.firstName != null &&
        basicInfoState.basicInfo.lastName != null) {
      return true;
    } else {
      return false;
    }
  }
}
