part of 'skills_bloc.dart';

@freezed
abstract class SkillsEvent with _$SkillsEvent {
  const factory SkillsEvent.editEvent(Skill skill) = EditEvent;

  const factory SkillsEvent.addEvent() = AddEvent;

  const factory SkillsEvent.updateEvent() = UpdateEvent;

  const factory SkillsEvent.deleteEvent(Skill skill) = DeleteEvent;

  const factory SkillsEvent.editSkillName(String name) = EditSkillName;

  const factory SkillsEvent.editSkillLevel(String level) = EditSkillLevel;

}
