part of 'education_bloc_bloc.dart';

@freezed
class EducationEvent with _$EducationEvent {
  const factory EducationEvent.nextIsPressed() = _OnNextIsPressed;
  const factory EducationEvent.universityIsSelected(int id) = _OnUniversitySelection;
  // const factory EducationEvent.stillWorkingIsSelected() = _OnStillWorkingIsSelected;
}