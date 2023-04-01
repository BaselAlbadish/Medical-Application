import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../entities/individual/individual_model.dart';

abstract class UserRepository {
  Future<Either<Failure, List<Location>>> getLocations();
  Future<Either<Failure, List<Company>>> getCompanies();
  Future<Either<Failure, List<Teacher>>> getTeachers();
}
