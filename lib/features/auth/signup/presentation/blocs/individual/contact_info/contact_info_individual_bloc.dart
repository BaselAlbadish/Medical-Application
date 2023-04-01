import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';
import 'package:mdcin_ca/features/auth/signup/domain/repositories/individual_repository.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_stash.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_validator.dart';

part 'contact_info_individual_event.dart';
part 'contact_info_individual_state.dart';
part 'contact_info_individual_bloc.freezed.dart';

class ContactInfoIndividualBloc
    extends Bloc<ContactInfoIndividualEvent, ContactInfoIndividualState> {
  final IndividualRepository repository;

  ContactInfoIndividualBloc(this.repository)
      : super(ContactInfoIndividualState.initial()) {
    on<_RequestProvidedEmail>(_onRequestProvidedeEmail);
    on<_PasswordIsEntered>(_onPasswordIsEntered);
    on<_ConfirmedPasswordIsEntered>(_onConfirmationPassowrdIsEntered);
    on<_ShowConfirmedPassordIsPressed>(_onShowConfirmedPassword);
    on<_ShowPassordIsPressed>(_onShowPassowrd);
    //disabled
    // on<_PhoneNumberIsEntered>(_onPhoneIsEntered);
    on<_EmailIsEntered>(_onEmailIsEntered);
    on<_NextIsPressed>(_onNextIsPressed);
    on<_SendCodeVerificationToEmail>(_onSendCodeVerificationToEmail);
  }

  void _onPasswordIsEntered(_PasswordIsEntered event, Emitter emit) {
    final validationMessage = InputValidator.validatePassword(event.password);
    final newState = state.copyWith(
      passwordValidationResponse: left(validationMessage),
      password: event.password,
    );

    emit(newState.copyWith(
      componentIsValid: _componentIsValid(newState),
    ));
  }

  void _onConfirmationPassowrdIsEntered(
    _ConfirmedPasswordIsEntered event,
    Emitter emit,
  ) {
    final validationMessage = InputValidator.validateConfirmedPassword(
        event.password, event.confirmedPassword);

    final newState = state.copyWith(
      confirmedPassowordValidationResponse: left(validationMessage),
      confirmPassword: event.confirmedPassword,
    );

    emit(newState.copyWith(
      componentIsValid: _componentIsValid(newState),
    ));
  }

  void _onRequestProvidedeEmail(
      _RequestProvidedEmail event, Emitter emit) async {
    emit(state.copyWith(
      optionOfFailureOrSuccessGeneratedEmail: none(),
    ));

    final result =
        await repository.createEmail(event.firstName, event.lastName);

    emit(state.copyWith(optionOfFailureOrSuccessGeneratedEmail: some(result)));
  }

  void _onShowPassowrd(_ShowPassordIsPressed event, Emitter emit) async {
    emit(state.copyWith(
      isShowingPassword: !state.isShowingPassword,
    ));
  }

  void _onShowConfirmedPassword(
      _ShowConfirmedPassordIsPressed event, Emitter emit) async {
    emit(state.copyWith(
      isShowingConfirmedPassword: !state.isShowingConfirmedPassword,
    ));
  }

  void _onNextIsPressed(_NextIsPressed event, Emitter emit) async {
    emit(state.copyWith(
      isShowingErrorMessages: true,
      componentIsValid: _componentIsValid(state),
    ));
  }

  _onEmailIsEntered(_EmailIsEntered event, Emitter emit) {
    var validateMessageEmail = InputValidator.validateEmail(event.email);

    emit(state.copyWith(
        emailValidationResponse: left(validateMessageEmail),
        email: event.email));
  }

  bool _componentIsValid(ContactInfoIndividualState state) {
    if (state.email.isNotEmpty && state.confirmPassword == state.password) {
      return true;
    } else {
      return false;
    }
  }

  //email
  _onSendCodeVerificationToEmail(
      _SendCodeVerificationToEmail event, Emitter emit) async {
    var result = await repository.sendCodeVerificationToEmail(event.email);
    if (result.isRight()) {
      result.fold((l) => null, (r) {
        InputStash.hashCodeEmail = r['code'];
        print("InputStash.hashCodeEmail => ${InputStash.hashCodeEmail}");
      });
    }
    emit(state.copyWith(sendCodeToEmailResponse: some(result)));
  }
}
