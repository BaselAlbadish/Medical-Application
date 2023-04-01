import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';

abstract class CourseRepository {
  Future<Either<Failure, Unit>> updateCourses(String token,Course course);

  Future<Either<Failure, Unit>> deleteCourses(String token,int id);

  Future<Either<Failure, int>> addCourses(String token, Course course);
}
