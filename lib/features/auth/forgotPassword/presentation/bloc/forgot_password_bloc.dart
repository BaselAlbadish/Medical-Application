import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/domain/repositories/forgotPassword_repository.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_validator.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordRepository forgotPasswordRepository;

  ForgotPasswordBloc(this.forgotPasswordRepository)
      : super(ForgotPasswordState.initial()) {
    on<_VerifyByEmail>(_forgotPassword);
    on<_ResendEmail>(_resendEmail);
    on<_ConfirmEmail>(_confirmEmail);
    on<_ChangeSecretPassword>(_changeSecretPassword);
    on<_ChangeSecretConfirmPassword>(_changeSecretConfirmPassword);
    on<_ChangePassword>(_changePassword);
    on<_DecrementIndex>(_decrementIndex);
    on<_EmailValidation>(_emailValidation);
    on<_CodeEmailValidation>(_codeEmailValidation);
  }

  _forgotPassword(_VerifyByEmail event, Emitter emit) async {
    int newIndex = state.index + 1;
    emit(state.copyWith(resultVerify: none(), loading: true));
    final result = await forgotPasswordRepository.verifyByEmailOrPhone(
      event.email,
    );
    result.fold(
      (l) {
        emit(
          state.copyWith(resultVerify: some(result), loading: false),
        );
      },
      (r) {
        emit(
          state.copyWith(
            resultVerify: some(result),
            accountId: r['accountId'],
            remoteCode: r['code'],
            index: newIndex,
            loading: false,
            email: event.email,
          ),
        );
      },
    );
  }

  _resendEmail(_ResendEmail event, Emitter emit) async {
    emit(state.copyWith(resultVerify: none()));
    final result = await forgotPasswordRepository.verifyByEmailOrPhone(
      event.email,
    );
    result.fold(
      (l) {
        emit(
          state.copyWith(resultVerify: some(result), loading: false),
        );
      },
      (r) {
        emit(
          state.copyWith(
            resultVerify: some(result),
            accountId: r['accountId'],
            remoteCode: r['code'],
          ),
        );
      },
    );
  }

  _confirmEmail(_ConfirmEmail event, Emitter emit) async {
    int newIndex = state.index + 1;
    emit(state.copyWith(message: none(), loading: true, resultVerify: none()));
    final result = await forgotPasswordRepository.confirmEmailOrPhoneByCode(
      event.code,
      event.remoteCode,
    );
    result.fold((l) {
      emit(
        state.copyWith(message: some(result), loading: false),
      );
    }, (r) {
      emit(
        state.copyWith(
            message: some(result),
            index: newIndex,
            loading: false,
            resultVerify: none()),
      );
    });
  }

  _changePassword(_ChangePassword event, Emitter emit) async {
    emit(state.copyWith(message: none(), loading: true));
    final result = await forgotPasswordRepository.changePassword(
      event.newPassword,
      event.accountId,
    );
    result.fold(
      (l) => emit(state.copyWith(message: some(result), loading: false)),
      (r) => emit(state.copyWith(message: some(result), loading: false)),
    );
  }

  _changeSecretPassword(_ChangeSecretPassword event, Emitter emit) {
    bool newStateSecret = !event.secret;
    emit(state.copyWith(
      secretPassword: newStateSecret,
      message: none(),
    ));
  }

  _changeSecretConfirmPassword(
      _ChangeSecretConfirmPassword event, Emitter emit) {
    bool newStateSecret = !event.secret;
    emit(state.copyWith(
      secretConfirmPassword: newStateSecret,
      message: none(),
    ));
  }

  _decrementIndex(_DecrementIndex event, Emitter emit) {
    int newIndex = state.index - 1;
    emit(state.copyWith(index: newIndex,message: none()));
  }

  //validation
  _emailValidation(_EmailValidation event, Emitter emit) {
    var error = InputValidator.validateEmail(event.validateEmail);
    if (error == "") {
      emit(state.copyWith(
        errorMessageEmail: right(unit),
        resultVerify: none(),
      ));
    } else {
      emit(state.copyWith(
        errorMessageEmail: left(error),
        resultVerify: none(),
      ));
    }
  }

  _codeEmailValidation(_CodeEmailValidation event, Emitter emit) {
    var error = InputValidator.validateCodeVerifyEmail(event.code);
    if (error == "") {
      emit(state.copyWith(
        errorMessageCodeEmail: right(unit),
        resultVerify: none(),
        message: none(),
      ));
    } else {
      emit(state.copyWith(
        errorMessageCodeEmail: left(error),
        resultVerify: none(),
        message: none(),
      ));
    }
  }
}
