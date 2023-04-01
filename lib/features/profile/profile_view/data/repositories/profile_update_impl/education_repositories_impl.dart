import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/education_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/education_repositories.dart';
import '../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../core/network/network_info.dart';
import '../../../../../../core/utility/local_datasource/local_data_source.dart';

class EducationRepositoryImpl implements EducationRepository {
  final EducationRemote educationRemote;
  final NetworkInfo networkInfo;
  final LocalDataSource userLocalDataSource;

  EducationRepositoryImpl(this.networkInfo, this.userLocalDataSource, this.educationRemote);

  @override
  Future<Either<Failure, Unit>> addEducation(String token, Education education) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(educationRemote.addEducation(token, education));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> deleteEducation(String token, int id) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(educationRemote.deleteEducation(token, id));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> updateEducation(String token, Education education) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(educationRemote.updateEducation(token, education));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> addCertification(String token, int educationId, File certification) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(educationRemote.addCertification(token, educationId, certification));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> deleteCertification(String token, int id) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(educationRemote.deleteCertification(token, id));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> updateCertification(String token, int id, File certification) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(educationRemote.updateCertification(token, id, certification));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }
}
