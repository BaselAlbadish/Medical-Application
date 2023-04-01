part of 'work_bloc.dart';

@freezed
class WorkEvent with _$WorkEvent {
  const factory WorkEvent.onStillWorkingHere() = _OnStillWorkingHere;
  const factory WorkEvent.onNextTapped() = _OnNextTapped;
  const factory WorkEvent.onCompanyNameEntered(String name) =
      _OnCompanyNameEntered;
  const factory WorkEvent.onPositionEntered(String position) =
      _OnPositionEntered;
}
