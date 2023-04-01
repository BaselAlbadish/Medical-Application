part of 'skills_bloc.dart';

@freezed
abstract class SkillsState with _$SkillsState {
  const factory SkillsState({
    required Skill skill,
    required List<Skill> skills,
    required String levelErrorMessage,
    required String nameErrorMessage,
    required Option<Either<Failure, Unit>> updateSkillResponse,
    required Option<Either<Failure, int>> addSkillResponse,
    required Option<Either<Failure, Unit>> deleteSkillResponse,
  }) = _SkillsState;

  factory SkillsState.initial(List<Skill> skills) => SkillsState(
        skill: const Skill(
          level: "",
          name: "",
        ),
        skills: skills,
        levelErrorMessage: "",
        nameErrorMessage: "",
        updateSkillResponse: none(),
        addSkillResponse: none(),
        deleteSkillResponse: none(),
      );
}
