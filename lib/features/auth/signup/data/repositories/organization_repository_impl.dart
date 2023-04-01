import 'dart:io';

import 'package:mdcin_ca/core/error/exceptions.dart';
import 'package:mdcin_ca/core/network/network_info.dart';
import 'package:mdcin_ca/core/utility/local_datasource/local_data_source.dart';
import 'package:mdcin_ca/features/auth/signup/data/datasources/remote_datasource/organization_remote_datasource.dart';
import 'package:mdcin_ca/features/auth/signup/data/datasources/remote_datasource/user_remote_data_source.dart';
import 'package:mdcin_ca/features/auth/signup/data/repositories/user_repository_impl.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/organization/organization_model.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/features/auth/signup/domain/repositories/organization_repository.dart';

class OrganizationRepositoryImpl extends UserRepositoryImpl implements OrganizationRepository {
  OrganizationRemoteDataSource organizationRemoteDataSource;
  NetworkInfo networkInfo;

  OrganizationRepositoryImpl({
    required UserRemoteDataSource userRemoteDataSource,
    required LocalDataSource userLocalDataSource,
    required this.organizationRemoteDataSource,
    required this.networkInfo,
  }) : super(
          networkInfo: networkInfo,
          userRemoteDataSource: userRemoteDataSource,
          userLocalDataSource: userLocalDataSource,
        );

  @override
  Future<Either<Failure, List<PrimaryBusiness>>>
      getAllPrimaryBusinesses() async {
    if (await networkInfo.isConnected) {
      try {
        final result =
            await organizationRemoteDataSource.getAllPrimaryBusiness();
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } catch (e) {
        return left(UnknownFailure());
      }
    }
    return left(NetworkFailure(null, "Internet connection required"));
  }

  @override
  Future<Either<Failure, Map>> signUpOrganization(
      OrganizationModel organizationModel) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await organizationRemoteDataSource
            .signUpOrganization(organizationModel);
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } catch (e) {
        return left(UnknownFailure());
      }
    }
    return left(NetworkFailure(null, "Internet connection required"));
  }

  @override
  Future<Either<Failure, Map>> sendCodeInEmail(String email) async {
    if (await networkInfo.isConnected) {
      try {
        final result =
            await organizationRemoteDataSource.sendCodeInEmail(email);
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } catch (e) {
        return left(UnknownFailure());
      }
    }
    return left(NetworkFailure(null, "Internet connection required"));
  }

  @override
  Future<Either<Failure, String>> confirmEmailCode(
      String hashCode, String code) async {
    if (await networkInfo.isConnected) {
      try {
        final result =
            await organizationRemoteDataSource.confirmEmailCode(hashCode, code);
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } catch (e) {
        return left(UnknownFailure());
      }
    }
    return left(NetworkFailure(null, "Internet connection required"));
  }

  @override
  Future<Either<Failure, String>> uploadImageFile(File image) async {
    if (await networkInfo.isConnected) {
      try {
        final result =
            await organizationRemoteDataSource.uploadImage(image);
        return right(result);
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } catch (e) {
        return left(UnknownFailure());
      }
    }
    return left(NetworkFailure(null, "Internet connection required"));
  }
}
