part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required bool loading,
    required int index,
    required String remoteCode,
    required String code,
    required int accountId,
    required bool secretPassword,
    required bool secretConfirmPassword,
    required String email,
    required Option<Either<Failure, String>> message,
    required Option<Either<Failure, Map>> resultVerify,
    required Either<String,Unit> errorMessageEmail,
    required Either<String,Unit> errorMessageCodeEmail,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => _ForgotPasswordState(
        loading: false,
        index: 0,
        remoteCode: "",
        code: "",
        accountId: 0,
        secretPassword: true,
        secretConfirmPassword: true,
        email: "",
        errorMessageEmail: left(InputValidator.validateEmail("")),
        errorMessageCodeEmail:left(InputValidator.validateCodeVerifyEmail("")), //left(InputValidator.validateCodeVerifyEmail("")),
        message: none(),
        resultVerify: none(),
      );
}
