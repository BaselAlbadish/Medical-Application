import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/summary_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/summary_repositories.dart';

import '../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../core/network/network_info.dart';
import '../../../../../../core/utility/local_datasource/local_data_source.dart';

class SummaryRepositoryImpl implements SummaryRepository {
  SummaryRemote summaryRemote;
  NetworkInfo networkInfo;

  SummaryRepositoryImpl({required this.networkInfo, required this.summaryRemote});

  @override
  Future<Either<Failure, Unit>> updateSummary(
      {required String token, required UserSummary oldSummary, required UserSummary newSummary}) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(
          summaryRemote.updateSummary(token: token, oldSummary: oldSummary, newSummary: newSummary));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }
}
