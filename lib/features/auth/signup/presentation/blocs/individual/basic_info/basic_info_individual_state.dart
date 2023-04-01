part of 'basic_info_individual_bloc.dart';

@freezed
class BasicInfoIndividualState with _$BasicInfoIndividualState {
  const factory BasicInfoIndividualState({
    required Either<String, Unit> firstNameValidationResponse,
    required Either<String, Unit> lastNameValidationResponse,
    required Option<Either<Failure, List<Location>>>
        optionOfEitherLocationOrFailure,
    required Option<Either<Failure, List<Profession>>> optionOfEitherProfessionOrFailure,
    required bool componentIsValid,
    required Location? selectedLocation,
    required Profession? selectedProfession,
    required bool isShowingErrorMessages,
  }) = _BasicInfoIndividualState;

  factory BasicInfoIndividualState.intitial() => BasicInfoIndividualState(
        firstNameValidationResponse: left(InputValidator.validateName("")),
        lastNameValidationResponse: left(InputValidator.validateName("")),
        optionOfEitherLocationOrFailure: none(),
        optionOfEitherProfessionOrFailure: none(),
        selectedLocation: null,
        selectedProfession: null,
        componentIsValid: false,
        isShowingErrorMessages: false,
      );
}
