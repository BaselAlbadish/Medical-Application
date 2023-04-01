part of 'summary_bloc.dart';

@freezed
abstract class SummaryState with _$SummaryState{
  const factory SummaryState({
    required UserSummary userSummary,
    required Option<Either<Failure, Unit>> updateSummaryResponse,
  }) = _SummaryState;

  factory SummaryState.initial(UserSummary userSummary) => SummaryState(
    userSummary:  userSummary,
    updateSummaryResponse: none()
  );
}
