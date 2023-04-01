import 'package:dartz/dartz.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/network/network_info.dart';
import '../../../../../core/utility/local_datasource/local_data_source.dart';
import '../../domain/entities/individual/individual_model.dart';
import '../../domain/repositories/individual_repository.dart';
import '../datasources/remote_datasource/individual_remote_datasource.dart';
import '../datasources/remote_datasource/user_remote_data_source.dart';
import 'user_repository_impl.dart';

class IndividualRepositoryImpl extends UserRepositoryImpl
    implements IndividualRepository {
  final IndividualRemoteDataSource remoteDataSource;

  IndividualRepositoryImpl({
    required NetworkInfo networkInfo,
    required UserRemoteDataSource userRemoteDataSource,
    required LocalDataSource userLocalDataSource,
    required this.remoteDataSource,
  }) : super(
            networkInfo: networkInfo,
            userRemoteDataSource: userRemoteDataSource,
            userLocalDataSource: userLocalDataSource);

  @override
  Future<Either<Failure, GeneratedEmail>> createEmail(
      String firstName, String lastName) async {
    if (await networkInfo.isConnected) {
      try {
        var result = await remoteDataSource.createEmail(firstName, lastName);
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, List<Major>>> getAllMajors() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllMajors();
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, List<Minor>>> getAllMinors() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllMinors();
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, List<Position>>> getAllPositions() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllPositions();
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, List<Profession>>> getAllPrimaryProfessions() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource
            .getAllPrimaryProfessions(); // throw network exception
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on Exception {
        return left(UnknownFailure());
      }
    } else {}
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, List<University>>> getAllUniversities() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getAllUniversities();
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, List<Degree>>> getDegreeForSpecificUniversity(
      int universityId) async {
    if (await networkInfo.isConnected) {
      try {
        final result =
            await remoteDataSource.getDegreeForSpecificUniversity(universityId);
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Map>> sendCodeVerificationToEmail(
      String email) async {
    if (await networkInfo.isConnected) {
      try {
        var result = await remoteDataSource.sendCodeVerificationToEmail(email);
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> sendCodeVerificationToMobile(
      String phoneNumber) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.sendCodeVerificationToMobile(phoneNumber);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> signUpIndividual(
      IndividualModel individual) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.signUpIndividual(individual);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, String>> verifyEmailByCode(
      String hash, String code) async {
    if (await networkInfo.isConnected) {
      try {
        var result = await remoteDataSource.verifyEmailByCode(hash, code);
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, Unit>> verifyPhoneNumberByCode(
      String phoneNumber, String code) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.verifyPhoneNumberByCode(phoneNumber, code);
        return right(unit);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } on Exception {
        return left(UnknownFailure());
      }
    }
    return left(UnknownFailure());
  }
}
