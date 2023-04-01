part of 'courses_bloc.dart';

@freezed
abstract class CoursesEvent with _$CoursesEvent {
  const factory CoursesEvent.editEvent(Course course) = EditEvent;

  const factory CoursesEvent.addEvent() = AddEvent;

  const factory CoursesEvent.updateEvent() = UpdateEvent;

  const factory CoursesEvent.deleteEvent(Course course) = DeleteEvent;

  const factory CoursesEvent.editTeacherName(String name) = EditTeacherName;

  const factory CoursesEvent.editCourseName(String courseName) = EditCourseName;

  const factory CoursesEvent.editOrganizationName(String name) = EditOrganizationName;

  const factory CoursesEvent.editLocation(Location location) = EditLocation;

  const factory CoursesEvent.editStartDate(Date startDate) = EditStartDate;

  const factory CoursesEvent.editEndDate(Date endDate) = EditEndDate;

}
