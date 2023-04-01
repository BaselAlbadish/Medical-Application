import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';
import 'package:mdcin_ca/features/auth/signup/domain/repositories/individual_repository.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_stash.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_validator.dart';

part 'basic_info_individual_event.dart';
part 'basic_info_individual_state.dart';
part 'basic_info_individual_bloc.freezed.dart';
class BasicInfoIndividualBloc
    extends Bloc<BasicInfoIndividualEvent, BasicInfoIndividualState> {
  final IndividualRepository repository;
  BasicInfoIndividualBloc(this.repository)
      : super(BasicInfoIndividualState.intitial()) {
    fetchLocations("");
    fetchProfession("");
    on<_FirstNameEntered>(_onFirstNameEntered);
    on<_LastNameEntered>(_onLastNameEntered);
    on<_FetchLocations>(_onFetchLocations);
    on<_FetchProfessions>(_onFetchProfessions);
    on<_PrimaryLocationSelected>(_onPrimaryLocationSelected);
    on<_PrimaryProfessionSelected>(_onPrimaryProfessionSelected);
    on<_NextIsPressed>(_onNextIsPressed);
  }

  void _onPrimaryLocationSelected(
      _PrimaryLocationSelected event, Emitter emit) {
    final newState = state.copyWith(
      selectedLocation: event.location,
    );
    emit(newState.copyWith(
      componentIsValid: _componentIsValid(newState),
    ));
  }

  void _onPrimaryProfessionSelected(
    _PrimaryProfessionSelected event,
    Emitter emit,
  ) {
    final newState = state.copyWith(
      selectedProfession: event.profession,
    );

    emit(newState.copyWith(
      componentIsValid: _componentIsValid(newState),
    ));
  }

  void _onFetchProfessions(_FetchProfessions event, Emitter emit) async {
    InputStash.repositoryProfessions ??=
        await repository.getAllPrimaryProfessions();

    if (InputStash.repositoryProfessions == null) {
      emit(state.copyWith(optionOfEitherProfessionOrFailure: none()));
    } else {
      emit(state.copyWith(
          optionOfEitherProfessionOrFailure:
              some(InputStash.repositoryProfessions!)));
    }
  }

  void _onFetchLocations(_FetchLocations event, Emitter emit) async {
    InputStash.repositoryLocations ??= await repository.getLocations();

    if (InputStash.repositoryLocations == null) {
      emit(state.copyWith(optionOfEitherLocationOrFailure: none()));
    } else {
      emit(state.copyWith(
          optionOfEitherLocationOrFailure:
              some(InputStash.repositoryLocations!)));
    }
  }

  Future<List<Location>> fetchLocations(String query) {
    if (InputStash.repositoryLocations != null) {
      return Future.value(InputStash.repositoryLocations!
          .getOrElse(() => List.empty())
          .where((element) =>
              element.country.name.toLowerCase().contains(query.toLowerCase()))
          .toList());
    } else {}
    return repository
        .getLocations()
        .then((value) => value.getOrElse(() => List.empty()))
        .then(
      (value) {
        InputStash.repositoryLocations = right(value);
        return value;
      },
    );
  }

  Future<List<Profession>> fetchProfession(String query) {
    if (InputStash.repositoryProfessions != null) {
      return Future.value(InputStash.repositoryProfessions!
          .getOrElse(() => List.empty())
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList());
    } else {}
    return repository
        .getAllPrimaryProfessions()
        .then((value) => value.getOrElse(() => List.empty()))
        .then(
      (value) {
        InputStash.repositoryProfessions = right(value);
        return value;
      },
    );
  }

  void _onFirstNameEntered(_FirstNameEntered event, Emitter emit) {
    final firstName = event.firstName;
    final errorMessage = InputValidator.validateName(firstName);
    if (errorMessage == "") {
      var newState = state.copyWith(
        firstNameValidationResponse: right(unit),
      );
      emit(newState.copyWith(
        componentIsValid: _componentIsValid(newState),
      ));
    } else {
      var newState = state.copyWith(
        firstNameValidationResponse: left(errorMessage),
      );
      emit(newState.copyWith(
        componentIsValid: _componentIsValid(newState),
      ));
    }
  }

  void _onNextIsPressed(_NextIsPressed event, Emitter emit) {
    if (_componentIsValid(state)) {
      InputStash.primaryProfession = state.selectedProfession;
      InputStash.primaryLocation = state.selectedLocation;
    }

    emit(state.copyWith(
      isShowingErrorMessages: true,
      componentIsValid: _componentIsValid(state),
    ));
  }

  void _onLastNameEntered(_LastNameEntered event, Emitter emit) {
    final lastName = event.lastName;
    final errorMessage = InputValidator.validateName(lastName);
    if (errorMessage == "") {
      var newState = state.copyWith(
        lastNameValidationResponse: right(unit),
      );
      emit(newState.copyWith(
        componentIsValid: _componentIsValid(newState),
      ));
    } else {
      var newState = state.copyWith(
        lastNameValidationResponse: left(errorMessage),
      );
      emit(newState.copyWith(
        componentIsValid: _componentIsValid(newState),
      ));
    }
  }

  bool _componentIsValid(BasicInfoIndividualState state) {
    if ((state.firstNameValidationResponse.isRight() ||
            InputStash.firstName.length > 1) &&
        (state.lastNameValidationResponse.isRight() ||
            InputStash.lastName.length > 1) &&
        (state.selectedLocation != null ||
            InputStash.primaryLocation != null) &&
        (state.selectedProfession != null ||
            InputStash.primaryProfession != null)) {
      return true;
    } else {
      return false;
    }
  }
}
