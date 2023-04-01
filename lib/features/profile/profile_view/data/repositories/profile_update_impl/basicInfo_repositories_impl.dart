
import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/basic_info_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/basicInfo_repositories.dart';
import '../../../../../../configure_di.dart';
import '../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../core/network/network_info.dart';
import '../../../../../../core/utility/local_datasource/local_data_source.dart';
import '../../../../core/token/token_repository.dart';

class BasicInfoRepositoryImpl implements BasicInfoRepository {
  final BasicInfoRemote basicInfoRemote;
  final NetworkInfo networkInfo;
  final LocalDataSource userLocalDataSource;

  BasicInfoRepositoryImpl(this.networkInfo, this.userLocalDataSource, this.basicInfoRemote);

  @override
  Future<Either<Failure, String>> updateBasicInfo(String token, BasicInfo basicInfo) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(basicInfoRemote.updateBasicInfo(token, basicInfo));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }
}
