part of 'summary_bloc.dart';

@freezed
abstract class SummaryEvent with _$SummaryEvent{
  const factory SummaryEvent.saveEvent(
      UserSummary userSummary
      ) = SaveEvent;

  const factory SummaryEvent.editSummary(
      UserSummary userSummary
      ) = EditSummary;
}


