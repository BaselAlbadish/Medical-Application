import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/courses_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/courses_repositories.dart';
import '../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../core/network/network_info.dart';
import '../../../../../../core/utility/local_datasource/local_data_source.dart';

class CourseRepositoryImpl implements CourseRepository {
  CourseRemote courseRemote;
  NetworkInfo networkInfo;

  CourseRepositoryImpl(this.networkInfo, this.courseRemote);

  @override
  Future<Either<Failure, int>> addCourses(String token, Course course) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(courseRemote.addCourses(token, course));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> deleteCourses(String token, int id) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(courseRemote.deleteCourses(token, id));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> updateCourses(String token, Course course) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(courseRemote.updateCourses(token, course));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }
}
