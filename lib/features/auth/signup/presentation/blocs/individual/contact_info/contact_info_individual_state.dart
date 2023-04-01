part of 'contact_info_individual_bloc.dart';

@freezed
class ContactInfoIndividualState with _$ContactInfoIndividualState {
  const factory ContactInfoIndividualState({
    required bool isShowingErrorMessages,
    required Option<Either<Failure, GeneratedEmail>>
        optionOfFailureOrSuccessGeneratedEmail,
    required Either<String, Unit> emailValidationResponse,
    required String email,
    required String confirmPassword,
    required String password,
    required Either<String, Unit> passwordValidationResponse,
    required bool isShowingPassword,
    required Either<String, Unit> confirmedPassowordValidationResponse,
    required bool isShowingConfirmedPassword,
    required bool componentIsValid,
    //verification email
    required Option<Either<Failure, Map>> sendCodeToEmailResponse,
    required Option<Either<Failure, Map>> confirmEmailCodeResponse,
  }) = _ContactInfoIndividualState;

  factory ContactInfoIndividualState.initial() => _ContactInfoIndividualState(
        isShowingConfirmedPassword: false,
        optionOfFailureOrSuccessGeneratedEmail: none(),
        emailValidationResponse: left(""),
        // phoneValidationResponse: left(InputValidator.validatePhoneNumber('')),
        passwordValidationResponse: left(""),
        confirmedPassowordValidationResponse: left(""),
        isShowingPassword: false,
        isShowingErrorMessages: false,
        componentIsValid: false,
        confirmPassword: "",
        email: "",
        password: "",
        //verification email
        confirmEmailCodeResponse: none(),
        sendCodeToEmailResponse: none(),
      );
}
