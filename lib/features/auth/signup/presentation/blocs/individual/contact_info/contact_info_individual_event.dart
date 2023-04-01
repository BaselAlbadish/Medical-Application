part of 'contact_info_individual_bloc.dart';

@freezed
class ContactInfoIndividualEvent with _$ContactInfoIndividualEvent {
  // const factory ContactInfoIndividualEvent.phoneNumberIsEntered(
  //     String phoneNumber) = _PhoneNumberIsEntered;

  const factory ContactInfoIndividualEvent.emailIsEntered(
    String email,
  ) = _EmailIsEntered;

  const factory ContactInfoIndividualEvent.passwordIsEntered(
    String password,
  ) = _PasswordIsEntered;

  const factory ContactInfoIndividualEvent.confirmedPasswordIsEntered(
    String password,
    String confirmedPassword,
  ) = _ConfirmedPasswordIsEntered;

  const factory ContactInfoIndividualEvent.showPassordIsPressed() =
      _ShowPassordIsPressed;

  const factory ContactInfoIndividualEvent.showConfirmedPassordIsPressed() =
      _ShowConfirmedPassordIsPressed;

  const factory ContactInfoIndividualEvent.nextIsPressed() = _NextIsPressed;

  const factory ContactInfoIndividualEvent.requestProvidedEmail(
    String firstName,
    String lastName,
  ) = _RequestProvidedEmail;

  //verfication  email

  const factory ContactInfoIndividualEvent.sendCodeToEmailResponse(
      String email) = _SendCodeVerificationToEmail;

}
