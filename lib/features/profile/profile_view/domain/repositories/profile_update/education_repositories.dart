import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';

abstract class EducationRepository {
  Future<Either<Failure, Unit>> updateEducation(String token,Education newEducation);

  Future<Either<Failure, Unit>> deleteEducation(String token,int id);

  Future<Either<Failure, Unit>> addEducation(String token, Education education);


  Future<Either<Failure, Unit>> addCertification(String token,int educationId, File certification);

  Future<Either<Failure, Unit>> updateCertification(String token,int educationId, File certification);

  Future<Either<Failure, Unit>> deleteCertification(String token,int educationId);
}
