import 'package:dartz/dartz.dart';
import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/network/network_info.dart';
import '../datasources/remote_datasource/user_remote_data_source.dart';
import '../../domain/entities/individual/individual_model.dart';
import '../../domain/repositories/user_repository.dart';

import '../../../../../core/error/network_error_handeler.dart';
import '../../../../../core/utility/local_datasource/local_data_source.dart';
import '../../../../keys_constants.dart';

class UserRepositoryImpl implements UserRepository {
  final NetworkInfo networkInfo;
  final UserRemoteDataSource userRemoteDataSource;
  final LocalDataSource userLocalDataSource;

  UserRepositoryImpl({
    required this.networkInfo,
    required this.userRemoteDataSource,
    required this.userLocalDataSource,
  });

  @override
  Future<Either<Failure, List<Location>>> getLocations() async {
    try {
      final jsonData = await userLocalDataSource.getList(K_LOCATION_KEY);
      final result = userLocalDataSource.convertToListOfObjectFromLocal(jsonData, Location.fromJson);
      return right(result);
    } on CacheException {
      if (await networkInfo.isConnected) {
        final res = await catchExceptions(userRemoteDataSource.getLocations());
        if (res.isRight()) {
          try {
            await userLocalDataSource.cacheList(
                K_LOCATION_KEY, userLocalDataSource.toListForCash(res.getOrElse(() => null)));
          } on CacheException {
            throw CacheException();
          }
        }
        return res.fold((l) => left(l), (r) => right(r as List<Location>));
      }
      return left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<Company>>> getCompanies() async{
    try {
      final jsonData = await userLocalDataSource.getList(K_COMPANY_NAMES_KEY);
      final result = userLocalDataSource.convertToListOfObjectFromLocal(jsonData, Company.fromJson);
      return right(result);
    } on CacheException {
      if (await networkInfo.isConnected) {
        final res = await catchExceptions(userRemoteDataSource.getCompanyNames());
        if (res.isRight()) {
          try {
            await userLocalDataSource.cacheList(
                K_COMPANY_NAMES_KEY, userLocalDataSource.toListForCash(res.getOrElse(() => null)));
          } on CacheException {
            throw CacheException();
          }
        }
        return res.fold((l) => left(l), (r) => right(r as List<Company>));
      }
      return left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<Teacher>>> getTeachers() async{
    try {
      final jsonData = await userLocalDataSource.getList(K_TEACHER_NAMES_KEY);
      final result = userLocalDataSource.convertToListOfObjectFromLocal(jsonData, Teacher.fromJson);
      return right(result);
    } on CacheException {
      if (await networkInfo.isConnected) {
        final res = await catchExceptions(userRemoteDataSource.getTeachersNames());
        if (res.isRight()) {
          try {
            await userLocalDataSource.cacheList(
                K_TEACHER_NAMES_KEY, userLocalDataSource.toListForCash(res.getOrElse(() => null)));
          } on CacheException {
            throw CacheException();
          }
        }
        return res.fold((l) => left(l), (r) => right(r as List<Teacher>));
      }
      return left(UnknownFailure());
    }
  }
}
