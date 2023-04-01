part of 'basic_info_individual_bloc.dart';

@freezed
class BasicInfoIndividualEvent with _$BasicInfoIndividualEvent {
  const factory BasicInfoIndividualEvent.firstNameEntered(String firstName) =
      _FirstNameEntered;

  const factory BasicInfoIndividualEvent.lastNameEntered(String lastName) =
      _LastNameEntered;

  const factory BasicInfoIndividualEvent.locationSuggestionsEntered(
      String suggestion) = _LocationSuggestionIsEntered;

// padding the location itself here
  const factory BasicInfoIndividualEvent.primaryLocationSelected(
      Location location) =

      _PrimaryLocationSelected;

  const factory BasicInfoIndividualEvent.primaryProfessionSelected(
      Profession profession) =
      _PrimaryProfessionSelected;

  const factory BasicInfoIndividualEvent.nextIsPressed() =
      _NextIsPressed;

  const factory BasicInfoIndividualEvent.fetchLocations(String pattern) =
      _FetchLocations;

  const factory BasicInfoIndividualEvent.fetchProfessions(String pattern) =
      _FetchProfessions;

}