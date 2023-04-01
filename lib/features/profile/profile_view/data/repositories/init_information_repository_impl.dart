import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/network_error_handeler.dart';
import '../../../../../core/network/network_info.dart';
import '../../../../../core/utility/local_datasource/local_data_source.dart';
import '../../../../keys_constants.dart';
import '../../domain/repositories/init_infornation_repository.dart';
import '../data_source/remote_data_source/profile_information_data_source.dart';

class FillDataRepositoryImpl implements FillDataRepository {
  final ProfileInformationDataSource profileInformationDataSource;
  final NetworkInfo networkInfo;
  final LocalDataSource userLocalDataSource;

  FillDataRepositoryImpl(this.networkInfo, this.userLocalDataSource, this.profileInformationDataSource);

  @override
  Future<Either<Failure, IndividualProfile?>> getIndividualInformation() async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(profileInformationDataSource.getProfileInformation());
      if (res.isRight()) {
        try {
          await userLocalDataSource.cacheValue(
              K_INDIVIDUAL_PROFIL_KEY, userLocalDataSource.toValueForCash(res.getOrElse(() => null)));
        } on CacheException {
          return left(CacheFailure());
        }
      }
      return res.fold((l) => left(l), (r) => right(r as IndividualProfile));
    } else {
      try {
        final result = await userLocalDataSource.get(K_INDIVIDUAL_PROFIL_KEY);
        final profile = userLocalDataSource.convertToObjectFromLocal(result, IndividualProfile.fromJson);
        return right(profile);
      } on CacheException {
        return left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, IndividualProfileState?>> getIndividualStates() async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(profileInformationDataSource.getIndividualStates());
      if (res.isRight()) {
        try {
          await userLocalDataSource.cacheValue(
              K_PROFILE_STATES_KEY, userLocalDataSource.toValueForCash(res.getOrElse(() => null)));
        } on CacheException {
          return left(CacheFailure());
        }
      }
      return res.fold((l) => left(l), (r) => right(r as IndividualProfileState));
    } else {
      try {
        final result = await userLocalDataSource.get(K_PROFILE_STATES_KEY);
        final status = userLocalDataSource.convertToObjectFromLocal(result, IndividualProfileState.fromJson);
        return right(status);
      } on CacheException {
        return left(CacheFailure());
      }
    }
  }
}
