import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';
import 'package:mdcin_ca/features/auth/signup/domain/repositories/user_repository.dart';

abstract class IndividualRepository extends UserRepository {
  Future<Either<Failure, List<Profession>>> getAllPrimaryProfessions();

  Future<Either<Failure, GeneratedEmail>> createEmail(String firstName, String lastName);

  Future<Either<Failure, List<Minor>>> getAllMinors();

  Future<Either<Failure, List<Major>>> getAllMajors();

  Future<Either<Failure, List<Degree>>> getDegreeForSpecificUniversity(int universityId);

  Future<Either<Failure, List<University>>> getAllUniversities();

  Future<Either<Failure, Unit>> sendCodeVerificationToMobile(String phoneNumber);

  Future<Either<Failure, Unit>> verifyPhoneNumberByCode(String phoneNumber, String code);

  Future<Either<Failure, List<Position>>> getAllPositions();

  Future<Either<Failure, Unit>> signUpIndividual(IndividualModel individual);

  Future<Either<Failure, Map>> sendCodeVerificationToEmail(String email);

  Future<Either<Failure, String>> verifyEmailByCode(String hash, String code);
}
