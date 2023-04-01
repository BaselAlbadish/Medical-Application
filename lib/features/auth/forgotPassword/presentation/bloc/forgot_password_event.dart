part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.verifyByEmail(
    String email,
  ) = _VerifyByEmail;

  const factory ForgotPasswordEvent.resendEmail(
    String email,
  ) = _ResendEmail;

  const factory ForgotPasswordEvent.confirmEmail(
    String code,
    String remoteCode,
  ) = _ConfirmEmail;

  const factory ForgotPasswordEvent.changePassword(
    String newPassword,
    int accountId,
  ) = _ChangePassword;

  const factory ForgotPasswordEvent.changeSecretPassword(
    bool secret,
  ) = _ChangeSecretPassword;

  const factory ForgotPasswordEvent.changeSecretConfirmPassword(
    bool secret,
  ) = _ChangeSecretConfirmPassword;

  const factory ForgotPasswordEvent.decrementIndex() = _DecrementIndex;

  //validation
  const factory ForgotPasswordEvent.emailValidation(
    String validateEmail,
  ) = _EmailValidation;

    const factory ForgotPasswordEvent.codeEmailValidation(
    String code,
  ) = _CodeEmailValidation;
}
