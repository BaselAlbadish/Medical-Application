part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required int stepIndex,
    required int stepOrganizationIndex,
    required bool creatingIndividualAccount, //
    required bool isStudent,
    required int indexPageView,
    required String firstName,
    required String lastName,
    //component Is Valid Code Verification Phone Number
    required bool componentIsValidCodeNumber,
    //loading
    required bool loading,
    //result code verification
    required Option<Either<Failure, String>> resultCodeVerification,
  }) = _SignUpState;

  factory SignUpState.initial() => _SignUpState(
        stepIndex: 0,
        stepOrganizationIndex: 0,
        creatingIndividualAccount: true,
        isStudent: false,
        indexPageView: 0,
        firstName: "",
        lastName: "",
        componentIsValidCodeNumber: false,
        loading: false,
        resultCodeVerification: none(),
      );
}
