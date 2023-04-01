import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../domain/entities/individual/individual_model.dart';
import '../../domain/entities/organization/organization_model.dart';

class InputStash {
  static late Either<Failure, List<Location>>? repositoryLocations;
  static late Either<Failure, List<University>>? repositoryUniversities;
  static late Either<Failure, List<Degree>>? repositoryDegree;
  static late Either<Failure, List<Minor>>? repositoryMinors;
  static late Either<Failure, List<Major>>? repositoryMajors;
  static late Either<Failure, List<Profession>>? repositoryProfessions;
  static late Either<Failure, List<PrimaryBusiness>>? repositoryPrimaryBusiness;

  // selected values individual
  static int index = 0;
  static bool isIndividualAccount = false;
  static String firstName = '';
  static String lastName = '';
  static String password = '';
  static String passwordConfirmation = '';
  // static String phoneNumber = '';
  static String hashCodeEmail = '';
  static String email = '';
  static Profession? primaryProfession;
  static Location? primaryLocation;
  static Location? primaryWorkLocation;
  static String generatedEmail = '';
  static University? university;
  static Degree? degree;
  static Major? major;
  static Minor? minor;
  static DateTime? startDate;
  static DateTime? endDate;
  static bool isStillWorking = false;
  static String companyName = '';
  static String position = '';

  static late String? startWorkingMonth = '';
  static late String? endWorkingMonth = '';
  static late String? startWorkingYear = '';
  static late String? endWorkingYear = '';

  static late String? startStudyingMonth = '';
  static late String? endStudyingMonth = '';
  static late String? startStudyingYear = '';
  static late String? endStudyingYear = '';
}
