part of 'education_bloc_bloc.dart';

@freezed
class EducationState with _$EducationState {

  const factory EducationState({
    required bool componentIsValid,
    required bool isShowingErrorMessages,
    // required bool isStillWorking,
  }) = _EducationState;


  factory EducationState.initial() => const _EducationState(
    componentIsValid: true,
    isShowingErrorMessages: false,
    // isStillWorking: false,
  );
}
