

import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../entities/organization/organization_model.dart';
import 'user_repository.dart';

abstract class OrganizationRepository extends UserRepository{
  Future<Either<Failure, List<PrimaryBusiness>>> getAllPrimaryBusinesses();
  //organization 
  Future<Either<Failure, Map>> signUpOrganization(OrganizationModel organizationModel);
  //verification
  Future<Either<Failure, Map>> sendCodeInEmail(String email);
  Future<Either<Failure, String>> confirmEmailCode(String hashCode,String code);
  //image
  Future<Either<Failure, String>> uploadImageFile(File image);
}
