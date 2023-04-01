// ignore_for_file: constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_user_event.dart';
part 'general_user_state.dart';

part 'general_user_bloc.freezed.dart';

class GeneralUserBloc extends Bloc<GeneralUserEvent, GeneralUserState> {
  GeneralUserBloc() : super(GeneralUserState.initial()) {
    on<OnOrganizationOrIndividualSelected>(_OnOrganizationOrIndividualSelected);
    on<OnAcceptConditionTapped>(_onAcceptConditionTapped);
    on<OnNextTapped>(_onNextTapped);
    on<OnSignInTapped>(_onSignInTapped);
  }

  void _OnOrganizationOrIndividualSelected(
    OnOrganizationOrIndividualSelected event,
    Emitter emit,
  ) {
    if (event.isIndividual) {
      final newState = state.copyWith(
        individualIsSelected: !state.individualIsSelected,
        organizationIsSelected: false,
        ifIndividualSelect: true,
      );
      emit(newState.copyWith(
        componentIsValid: _componentIsValid(newState),
      ));
    } else {
      final newState = state.copyWith(
        organizationIsSelected: !state.organizationIsSelected,
        individualIsSelected: false,
        ifIndividualSelect: true,
      );
      emit(newState.copyWith(
        componentIsValid: _componentIsValid(newState),
      ));
    }
  }
  
  void _onAcceptConditionTapped(
      OnAcceptConditionTapped event, Emitter<GeneralUserState> emit) {
    final newState = state.copyWith(
      acceptedTermsAndConditions: !state.acceptedTermsAndConditions,
    );

    if (event.value == false || event.value == null) {
      emit(newState.copyWith(
        componentIsValid: _componentIsValid(newState),
      ));
    } else {
      emit(newState.copyWith(
        componentIsValid: _componentIsValid(newState),
      ));
    }
  }

  void _onNextTapped(OnNextTapped event, Emitter<GeneralUserState> emit) {
    // put all the data in stash
  }

  void _onSignInTapped(OnSignInTapped event, Emitter<GeneralUserState> emit) {}

  bool _componentIsValid(GeneralUserState state) {
    if ((state.individualIsSelected || state.organizationIsSelected) &&
        state.acceptedTermsAndConditions) {
      return true;
    } else {
      return false;
    }
  }
}
