import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';

abstract class ExperienceRepository {
  Future<Either<Failure, Unit>> updateExperience(String token, Experience newExperience);

  Future<Either<Failure, Unit>> deleteExperience(String token, int id);

  Future<Either<Failure, int>> addExperience(String token, Experience experience);
}
