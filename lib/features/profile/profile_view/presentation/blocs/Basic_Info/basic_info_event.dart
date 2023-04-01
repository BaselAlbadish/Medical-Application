part of 'basic_info_bloc.dart';

@freezed
abstract class BasicInfoEvent with _$BasicInfoEvent {
  const factory BasicInfoEvent.saveEvent() = SaveEvent;

  const factory BasicInfoEvent.editFirstName(String firstName) = EditFirstName;

  const factory BasicInfoEvent.editLastName(String lastName) = EditLastName;

  const factory BasicInfoEvent.editPrimaryProfession(Profession profession) = EditPrimaryProfession;

  const factory BasicInfoEvent.editLocation(Location location) = EditLocation;

  const factory BasicInfoEvent.editGender(String gender) = EditGender;

  const factory BasicInfoEvent.editBirthday(Date birthday) = EditBirthday;
}
