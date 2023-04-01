part of 'organization_bloc.dart';

@freezed
class OrganizationState with _$OrganizationState {
  const factory OrganizationState({
    //organization
    required bool componentIsValid,
    required bool loading,
    //basic info
    required String organizationName,
    required String organizationWebsite,
    PrimaryBusiness? organizationBusiness,
    Location? organizationLocation,
    //contact into
    required String emailAddress,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
    required bool isSecurityPassword,
    required bool isSecurityConfirmPassword,
    //validation
    required String validateOrganizationName,
    required String validateOrganizationWebsite,
    required String validateOrganizationEmailAddress,
    required String validateOrganizationPhoneNumber,
    required String validateOrganizationPassword,
    required String validateOrganizationConfirmedPassword,
    //success messages
    required Option<Either<Failure, String>> successConfirmEmail,
    required bool successReturnCode,
    required Option<Either<Failure, Map>> successSignUp,
    //email verification
    required Option<Either<Failure, Map>> sendCodeToEmailResponse,
    required Option<Either<Failure, Map>> confirmEmailCodeResponse,
    required String hashCodeEmail,
    //image 
    File? image,
    //component Is Valid Code Verification Phone Number
    required bool componentIsValidCodeNumber,
  }) = _OrganizationState;

  factory OrganizationState.initial() => _OrganizationState(
        //Organization
        componentIsValid: false,
        loading:false,
        //basic info
        organizationName: "",
        organizationWebsite: "",
        //contact into
        emailAddress: "",
        phoneNumber: "",
        password: "",
        confirmPassword: "",
        isSecurityPassword: true,
        isSecurityConfirmPassword: true,
        //validation
        validateOrganizationWebsite: "",
        validateOrganizationName: "",
        validateOrganizationEmailAddress: "",
        validateOrganizationPhoneNumber: "",
        validateOrganizationPassword: "",
        validateOrganizationConfirmedPassword: "",
        //success message
        successConfirmEmail: none(),
        successReturnCode:false,
        successSignUp: none(),
        //email verification
        sendCodeToEmailResponse: none(),
        confirmEmailCodeResponse: none(),
        hashCodeEmail: "",
        //component Is Valid Code Verification Phone Number
        componentIsValidCodeNumber: false,
      );
}
