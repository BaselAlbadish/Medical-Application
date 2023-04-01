part of 'work_bloc.dart';

@freezed
class WorkState with _$WorkState {
  const factory WorkState({
    required bool isShowingErrorMessages,
    required bool isStillWorkingHere,
    required bool componentIsValid,
    required String? companyName,
    required String? positionName,
  }) = _WorkState;



  factory WorkState.initial() => const WorkState(
    isShowingErrorMessages: false,
    isStillWorkingHere: false,
    componentIsValid: false,
    companyName: null,
    positionName: null,
  );
}
