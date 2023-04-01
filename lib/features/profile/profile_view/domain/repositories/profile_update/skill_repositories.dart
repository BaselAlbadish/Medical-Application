import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';

abstract class SkillRepository {
  Future<Either<Failure, Unit>> updateSkills(String token,Skill skill);

  Future<Either<Failure, int>> addSkills(String token, Skill skill);

  Future<Either<Failure, Unit>> deleteSkills(String token,int id);
}
