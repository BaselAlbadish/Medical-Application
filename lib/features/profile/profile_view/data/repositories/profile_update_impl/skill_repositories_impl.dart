import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/skill_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/skill_repositories.dart';

import '../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../core/network/network_info.dart';
import '../../../../../../core/utility/local_datasource/local_data_source.dart';

class SkillRepositoryImpl implements SkillRepository {
  SkillRemote skillRemote;
  NetworkInfo networkInfo;

  SkillRepositoryImpl(this.networkInfo, this.skillRemote);

  @override
  Future<Either<Failure, int>> addSkills(String token, Skill skill) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(skillRemote.addSkills(token, skill));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> deleteSkills(String token, int id) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(skillRemote.deleteSkills(token, id));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> updateSkills(String token, Skill skill) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(skillRemote.updateSkills(token, skill));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }
}
