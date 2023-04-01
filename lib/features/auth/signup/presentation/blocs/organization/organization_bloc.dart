import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/error/failures.dart';
import '../../../domain/entities/individual/individual_model.dart';
import '../../../domain/entities/organization/organization_model.dart';
import '../../../domain/repositories/organization_repository.dart';
import '../../utility/input_stash.dart';
import '../../utility/input_validator.dart';

part 'organization_event.dart';
part 'organization_state.dart';
part 'organization_bloc.freezed.dart';

class OrganizationBloc extends Bloc<OrganizationEvent, OrganizationState> {
  OrganizationRepository organizationRepository;
  OrganizationBloc(this.organizationRepository)
      : super(OrganizationState.initial()) {
    //basic_info_widget
    fetchLocations("");
    fetchAllPrimaryBusiness("");
    on<_EnterName>(_onEnterName);
    on<_EnterWebSite>(_onEnterWebSite);
    on<_EnterLocation>(_onEnterLocation);
    on<_EnterBusiness>(_onEnterBusiness);
    //contact_info_widget
    on<_EnterEmailAddress>(_onEnterEmailAddress);
    on<_EnterPhoneNumber>(_onEnterPhoneNumber);
    on<_EnterPassword>(_onEnterPassword);
    on<_EnterConfirmPassword>(_onEnterConfirmPassword);
    on<_ChangeStatusSecurityPassword>(_onChangeStatusSecurityPassword);
    on<_ChangeStatusSecurityConfirmPassword>(
        _onChangeStatusSecurityConfirmPassword);
    //Organization
    on<_SignUpOrganization>(_onSignUpOrganization);
    on<_ChangeStateComponentIsInvalid>(_onChangeStateComponentIsInvalid);
    on<_SendCodeToEmailResponse>(_onSendCodeToEmailResponse);
    on<_ConfirmEmailCode>(_onConfirmEmailCode);
    on<_ComponentIsValidCodeNumber>(_onComponentIsValidCodeNumber);
  }

  //basic info
  _onEnterName(_EnterName event, Emitter emit) {
    final errorMessage = InputValidator.validateName(event.name);
    final newState = state.copyWith(
      validateOrganizationName: errorMessage,
      organizationName: event.name,
    );
    emit(state.copyWith(
      validateOrganizationName: errorMessage,
      organizationName: event.name,
      componentIsValid: _componentIsValid(newState),
    ));
  }

  _onEnterWebSite(_EnterWebSite event, Emitter emit) {
    final webSiteMessage = InputValidator.validationNameWebSite(event.email);
    final newstate = state.copyWith(
      validateOrganizationWebsite: webSiteMessage,
      organizationWebsite: event.email,
    );
    emit(state.copyWith(
      validateOrganizationWebsite: webSiteMessage,
      organizationWebsite: event.email,
      componentIsValid: _componentIsValid(newstate),
    ));
  }

  _onEnterLocation(_EnterLocation event, Emitter emit) {
    final newstate = state.copyWith(organizationLocation: event.location);
    emit(state.copyWith(
      organizationLocation: event.location,
      componentIsValid: _componentIsValid(newstate),
    ));
  }

  _onEnterBusiness(_EnterBusiness event, Emitter emit) {
    final newstate = state.copyWith(organizationBusiness: event.business);
    emit(state.copyWith(
      organizationBusiness: event.business,
      componentIsValid: _componentIsValid(newstate),
    ));
  }

  Future<List<Location>> fetchLocations(String query) {
    if (InputStash.repositoryLocations != null) {
      return Future.value(InputStash.repositoryLocations!
          .getOrElse(() => List.empty())
          .where((element) =>
              element.country.name.toLowerCase().contains(query.toLowerCase()))
          .toList());
    } else {}
    return organizationRepository
        .getLocations()
        .then((value) => value.getOrElse(() => List.empty()))
        .then(
      (value) {
        InputStash.repositoryLocations = right(value);
        return value;
      },
    );
  }

  Future<List<PrimaryBusiness>> fetchAllPrimaryBusiness(String query) {
    if (InputStash.repositoryPrimaryBusiness != null) {
      return Future.value(InputStash.repositoryPrimaryBusiness!
          .getOrElse(() => List.empty())
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList());
    } else {}
    return organizationRepository
        .getAllPrimaryBusinesses()
        .then((value) => value.getOrElse(() => List.empty()))
        .then((value) {
      InputStash.repositoryPrimaryBusiness = right(value);
      return value;
    });
  }

  //contact info
  _onEnterEmailAddress(_EnterEmailAddress event, Emitter emit) {
    final errorMessage = InputValidator.validateEmail(event.emailAddress);
    final newState = state.copyWith(
      emailAddress: event.emailAddress,
      validateOrganizationEmailAddress: errorMessage,
    );
    emit(state.copyWith(
      componentIsValid: _componentIsValid(newState),
      emailAddress: event.emailAddress,
      validateOrganizationEmailAddress: errorMessage,
    ));
  }

  _onEnterPhoneNumber(_EnterPhoneNumber event, Emitter emit) {
    final errorMessage = InputValidator.validatePhoneNumber(event.phoneNumber);
    final newState = state.copyWith(
      phoneNumber: event.phoneNumber,
      validateOrganizationPhoneNumber: errorMessage,
    );
    emit(state.copyWith(
      phoneNumber: event.phoneNumber,
      validateOrganizationPhoneNumber: errorMessage,
      componentIsValid: _componentIsValid(newState),
    ));
  }

  _onEnterPassword(_EnterPassword event, Emitter emit) {
    final errorMessage = InputValidator.validatePassword(event.password);
    final newState = state.copyWith(
      password: event.password,
      validateOrganizationPassword: errorMessage,
    );
    emit(state.copyWith(
      password: event.password,
      validateOrganizationPassword: errorMessage,
      componentIsValid: _componentIsValid(newState),
    ));
  }

  _onEnterConfirmPassword(_EnterConfirmPassword event, Emitter emit) {
    final errorMessage = InputValidator.validateConfirmedPassword(
      state.password,
      event.newPassword,
    );
    final newState = state.copyWith(
      confirmPassword: event.newPassword,
      validateOrganizationConfirmedPassword: errorMessage,
    );
    emit(state.copyWith(
      confirmPassword: event.newPassword,
      validateOrganizationConfirmedPassword: errorMessage,
      componentIsValid: _componentIsValid(newState),
    ));
  }

  _onChangeStatusSecurityPassword(
    _ChangeStatusSecurityPassword event,
    Emitter emit,
  ) {
    final newState = !state.isSecurityPassword;
    emit(state.copyWith(isSecurityPassword: newState));
  }

  _onChangeStatusSecurityConfirmPassword(
    _ChangeStatusSecurityConfirmPassword event,
    Emitter emit,
  ) {
    final newState = !state.isSecurityConfirmPassword;
    emit(state.copyWith(isSecurityConfirmPassword: newState));
  }

  //Organization
  _componentIsValid(OrganizationState state) {
    if (InputStash.index == 1) {
      if (state.organizationLocation != null &&
          state.organizationBusiness != null &&
          state.organizationName.isNotEmpty &&
          state.organizationWebsite.isNotEmpty &&
          state.validateOrganizationName == "" &&
          state.validateOrganizationWebsite == "") {
        return true;
      } else {
        return false;
      }
    } else if (InputStash.index == 2) {
      if (state.emailAddress.isNotEmpty &&
          state.emailAddress.isNotEmpty &&
          state.confirmPassword.isNotEmpty &&
          state.validateOrganizationEmailAddress == "" &&
          state.validateOrganizationEmailAddress == "" &&
          state.validateOrganizationConfirmedPassword == "") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  _onSignUpOrganization(_SignUpOrganization event, Emitter emit) async {
    emit(state.copyWith(loading: true));
    Organization organization = Organization(
      organizationName: state.organizationName,
      website: state.organizationWebsite,
      locationId: state.organizationLocation!.id!,
      PrimaryBusinessName: state.organizationBusiness!.name,
      email: state.emailAddress,
      phoneNumber: state.phoneNumber,
      username: state.organizationName,
      password: state.confirmPassword,
      accountStatus: "active",
    );
    final result =
        await organizationRepository.signUpOrganization(organization);
    emit(state.copyWith(successSignUp: some(result), loading: false));
  }

  _onChangeStateComponentIsInvalid(
    _ChangeStateComponentIsInvalid event,
    Emitter emit,
  ) {
    emit(state.copyWith(componentIsValid: false));
  }

  _onSendCodeToEmailResponse(
      _SendCodeToEmailResponse event, Emitter emit) async {
    final result = await organizationRepository.sendCodeInEmail(event.email);
    emit(
      state.copyWith(
        confirmEmailCodeResponse: some(result),
        hashCodeEmail: result.fold((l) => "", (r) => r['code']),
      ),
    );
  }

  _onConfirmEmailCode(_ConfirmEmailCode event, Emitter emit) async {
    emit(state.copyWith(loading: true));
    final result = await organizationRepository.confirmEmailCode(
      state.hashCodeEmail,
      event.code,
    );
    result.fold(
      (l) {
        emit(
          state.copyWith(
            successConfirmEmail: some(result),
            successReturnCode: false,
            loading: false,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            successConfirmEmail: some(result),
            successReturnCode: true,
            loading: false,
          ),
        );
      },
    );
  }
  
  _onComponentIsValidCodeNumber(_ComponentIsValidCodeNumber event ,Emitter emit){
    if (event.numberLength.length == 6) {
      emit(state.copyWith(componentIsValidCodeNumber: true));
    }else{
      emit(state.copyWith(componentIsValidCodeNumber: false));
    }
  }

}
