// ignore_for_file: constant_identifier_names

part of 'general_user_bloc.dart';

@freezed
class GeneralUserState with _$GeneralUserState {
  const factory GeneralUserState({
    required final bool individualIsSelected,
    required final bool organizationIsSelected,
    required final bool ifIndividualSelect,
    required final bool acceptedTermsAndConditions,
    required final bool componentIsValid,
  }) = _GeneralUserState;
  
  factory GeneralUserState.initial() => const GeneralUserState(
        individualIsSelected: false,
        organizationIsSelected: false,
        acceptedTermsAndConditions: false,
        componentIsValid: false,
        ifIndividualSelect: false,
      );
}
