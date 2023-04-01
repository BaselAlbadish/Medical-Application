import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/experience_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/experience_repositories.dart';
import '../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../core/network/network_info.dart';
import '../../../../../../core/utility/local_datasource/local_data_source.dart';

class ExperienceRepositoryImpl implements ExperienceRepository {
  final ExperienceRemote experienceRemote;
  final NetworkInfo networkInfo;

  ExperienceRepositoryImpl(this.networkInfo, this.experienceRemote);

  @override
  Future<Either<Failure, int>> addExperience(String token, Experience experience) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(experienceRemote.addExperience(token, experience));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> deleteExperience(String token, int id) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(experienceRemote.deleteExperience(token, id));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> updateExperience(String token, Experience newExperience) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(experienceRemote.updateExperience(token, newExperience));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }
}
