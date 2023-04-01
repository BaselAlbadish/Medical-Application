part of 'experience_bloc.dart';

@freezed
abstract class ExperienceState with _$ExperienceState {
  const factory ExperienceState({
    required Experience experience,
    required List<Experience> experiences,
    required String positionErrorMessage,
    required String companyNameErrorMessage,
    required String typeErrorMessage,
    required String locationErrorMessage,
    required Option<Either<Failure, Unit>> updateExperienceResponse,
    required Option<Either<Failure, int>> addExperienceResponse,
    required Option<Either<Failure, Unit>> deleteExperienceResponse,
  }) = _ExperienceState;

  factory ExperienceState.initial(List<Experience> experiences) => ExperienceState(
      experience: const Experience(
          companyName: "",
          positionName: "",
          employeeType: "",
          location: null,
          stillWorking: null,
          startDate: null,
          endDate: null),
      experiences: experiences,
      positionErrorMessage: "",
      companyNameErrorMessage: "",
      typeErrorMessage: "",
      locationErrorMessage: "",
      updateExperienceResponse: none(),
      addExperienceResponse: none(),
      deleteExperienceResponse: none(),

  );
}
