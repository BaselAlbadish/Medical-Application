part of 'signin_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.clickOnButtonSignIn(
    String email,
    String password,
  ) = _ClickOnSignIn;

  const factory SignInEvent.clickOnButtonRememberMe(
    bool isActive,
  ) = _ClickOnRememberMe;

  const factory SignInEvent.secretFieldPassword(
    bool isActive,
  ) = _SecretFieldPassword;

  const factory SignInEvent.emailValidation(
    String validateEmail,
  ) = _EmailValidation;

  const factory SignInEvent.passwordValidation(
    String validateEmail,
  ) = _PasswordValidation;
}
