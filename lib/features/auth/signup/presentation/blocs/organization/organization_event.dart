part of 'organization_bloc.dart';

@freezed
class OrganizationEvent with _$OrganizationEvent {
  //organization
  const factory OrganizationEvent.onNextTap() = _OnNextTap;
  const factory OrganizationEvent.onPrevTap() = _OnPrevTap;
  const factory OrganizationEvent.changeStateComponentIsInvalid() =
      _ChangeStateComponentIsInvalid;
  const factory OrganizationEvent.signUpOrganization() = _SignUpOrganization;
  const factory OrganizationEvent.componentIsValidCodeNumber(String numberLength) =
      _ComponentIsValidCodeNumber;

  //verification email
  const factory OrganizationEvent.sendCodeToEmailResponse(String email) =
      _SendCodeToEmailResponse;
  const factory OrganizationEvent.confirmEmailCode(String code) =
      _ConfirmEmailCode;

  //basic info
  const factory OrganizationEvent.enterName(
    String name,
  ) = _EnterName;

  const factory OrganizationEvent.enterWebSite(
    String email,
  ) = _EnterWebSite;

  const factory OrganizationEvent.enterLocation(
    Location location,
  ) = _EnterLocation;

  const factory OrganizationEvent.enterBusiness(
    PrimaryBusiness business,
  ) = _EnterBusiness;

  //contact info
  const factory OrganizationEvent.enterEmailAddress(
    String emailAddress,
  ) = _EnterEmailAddress;

  const factory OrganizationEvent.enterPhoneNumber(
    String phoneNumber,
  ) = _EnterPhoneNumber;

  const factory OrganizationEvent.enterPassword(
    String password,
  ) = _EnterPassword;

  const factory OrganizationEvent.enterConfirmPassword(
    String oldPassword,
    String newPassword,
  ) = _EnterConfirmPassword;

  const factory OrganizationEvent.changeStatusSecurityPassword() =
      _ChangeStatusSecurityPassword;

  const factory OrganizationEvent.changeStatusSecurityConfirmPassword() =
      _ChangeStatusSecurityConfirmPassword;
}
