part of 'signin_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    required bool loading,
    required bool rememberMe,
    required bool secretField,
    required Either<String, Unit> errorMessageEmail,
    required Either<String, Unit> errorMessagePassword,
    required Option<Either<Failure, Map>> signInResponse,
  }) = _SignInState;
  factory SignInState.initial() => SignInState(
        loading: false,
        rememberMe: false,
        secretField: true,
        errorMessageEmail: right(unit),
        errorMessagePassword: right(unit),
        signInResponse: none(),
      );
      
}
