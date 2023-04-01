part of 'experience_bloc.dart';

@freezed
abstract class ExperienceEvent with _$ExperienceEvent {
  const factory ExperienceEvent.editEvent(Experience experience) = EditEvent;

  const factory ExperienceEvent.addEvent() = AddEvent;

  const factory ExperienceEvent.updateEvent() = UpdateEvent;

  const factory ExperienceEvent.deleteEvent(Experience experience) = DeleteEvent;

  const factory ExperienceEvent.editPosition(String position) = EditPosition;

  const factory ExperienceEvent.editCompanyName(String companyName) = EditCompanyName;

  const factory ExperienceEvent.editEmployeeType(String type) = EditEmployeeType;

  const factory ExperienceEvent.editLocation(Location location) = EditLocation;

  const factory ExperienceEvent.editStartDate(Date startDate) = EditStartDate;

  const factory ExperienceEvent.editEndDate(Date endDate) = EditEndDate;

  const factory ExperienceEvent.editStillWorking(bool stillWorking) = EditStillWorking;
}
