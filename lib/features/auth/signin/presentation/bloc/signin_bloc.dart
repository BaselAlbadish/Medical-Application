import 'package:dartz/dartz.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/auth/signin/domain/repositories/sign_in_repository.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_validator.dart';

part 'signin_bloc.freezed.dart';
part 'signin_event.dart';
part 'signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  // final SignInUseCase useCase;
  final SignInRepository signInRepository;

  SignInBloc(
    this.signInRepository,
  ) : super(SignInState.initial()) {
    on<_ClickOnSignIn>(_signin);
    on<_ClickOnRememberMe>(_rememberMe);
    on<_SecretFieldPassword>(_secretPassowrd);
    on<_EmailValidation>(_emailValidation);
    on<_PasswordValidation>(_passwordValidation);
  }

  _signin(_ClickOnSignIn event, Emitter emit) async {
    emit(state.copyWith(loading: true, signInResponse: none()));
    final result = await signInRepository.signIn(
        event.email, event.password, state.rememberMe);
    emit(state.copyWith(signInResponse: some(result), loading: false));
  }

  _rememberMe(_ClickOnRememberMe event, Emitter emit) async {
    bool IsActive = state.rememberMe;
    emit(state.copyWith(rememberMe: !IsActive));
  }

  _secretPassowrd(_SecretFieldPassword event, Emitter emit) async {
    bool IsActive = state.secretField;
    emit(state.copyWith(secretField: !IsActive));
  }

  _emailValidation(_EmailValidation event, Emitter emit) {
    var error = InputValidator.validateEmail(event.validateEmail);
    if (error == "") {
      emit(state.copyWith(errorMessageEmail: right(unit)));
    } else {
      emit(state.copyWith(errorMessageEmail: left(error)));
    }
  }

  _passwordValidation(_PasswordValidation event, Emitter emit) {
    var error = InputValidator.validatePassword(event.validateEmail);
    if (error == "") {
      emit(state.copyWith(errorMessagePassword: right(unit)));
    } else {
      emit(state.copyWith(errorMessagePassword: left(error)));
    }
  }
}
