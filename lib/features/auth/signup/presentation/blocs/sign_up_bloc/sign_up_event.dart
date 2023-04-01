part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.individualIsSelected(bool value) =
      _IndividualIsSelected;
  //individual
  const factory SignUpEvent.nextIsTapped() = _NextIsTapped;
  const factory SignUpEvent.prevIsTapped() = _PrevIsTapped;
  //organization
  const factory SignUpEvent.nextInOrganizationTapped() =
      _NextInOrganizationTapped;
  const factory SignUpEvent.prevIsOrganizationTapped() =
      _PrevIsOrganizationTapped;

  const factory SignUpEvent.signInPressed() = _SignInPressed;

  // pages validation
  const factory SignUpEvent.setGeneralUserValidity(bool state) =
      _SetGeneralUserValidity;

  // const factory SignUpEvent.verifyPhoneNumberByCode(
  //   String phoneNumber,
  //   String code,
  // ) = _VerifyPhoneNumberByCode;

  //email
  const factory SignUpEvent.confirmEmailCode(
    String code,
  ) = _ConfirmEmailCode;
  
  const factory SignUpEvent.componentIsValidCodeNumber(String numberLength) =
      _ComponentIsValidCodeNumber;

  const factory SignUpEvent.loading() = _Loading;
}
