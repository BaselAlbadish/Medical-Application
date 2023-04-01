import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/utility/local_datasource/local_data_source.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/summary_repositories.dart';
import '../../../../../../core/error/failures.dart';
import '../../../../core/token/token_repository.dart';

part 'summary_bloc.freezed.dart';

part 'summary_event.dart';

part 'summary_state.dart';

class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  final SummaryRepository summaryRepository;

  SummaryBloc({required this.summaryRepository})
      : super(SummaryState.initial(getIt<ProfileStore>().getProfile()!.summary)) {

    on<SaveEvent>((event, emit) async {
      String token = await getIt<TokenRepository>().getToken();
      final response = await summaryRepository.updateSummary(
          token: token.toString(),
          oldSummary: getIt<ProfileStore>().getProfile()!.summary,
          newSummary: state.userSummary);

      emit(state.copyWith(updateSummaryResponse: some(response)));
    });

    on<EditSummary>((event, emit) async {
      emit(state.copyWith(userSummary: event.userSummary));
    });
  }
}
