import 'package:mdcin_ca/core/data/repository.dart';
import 'package:mdcin_ca/core/error/exceptions.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/network/network_info.dart';
import 'package:mdcin_ca/core/utility/local_datasource/local_data_source.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/data/datasources/remote_datasource/forgotPassword_datasource.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/domain/repositories/forgotPassword_repository.dart';

class ForgotPasswordRepositoryImp extends BaseRepository
    implements ForgotPasswordRepository {
  final ForgotPasswordRemoteDataSource forgotPasswordRemoteDataSource;
  final LocalDataSource localDataSource;

  ForgotPasswordRepositoryImp({
    required this.forgotPasswordRemoteDataSource,
    required this.localDataSource,
    required NetworkInfo networkInfo,
  }) : super(networkInfo);

  @override
  Future<Either<Failure, Map>> verifyByEmailOrPhone(String emailOrPassword) {
    return safeCall(() async {
      final result = await forgotPasswordRemoteDataSource.verifyByEmailOrPhone(
        emailOrPassword,
      );
      return right(result);
    });
  }

  @override
  Future<Either<Failure, String>> confirmEmailOrPhoneByCode(
      String code, String hashCode) {
    return safeCall(() async {
      print(code);
      print(hashCode);
      final result =
          await forgotPasswordRemoteDataSource.confirmEmailOrPhoneByCode(
        code,
        hashCode,
      );
      return right(result);
    });
  }

  @override
  Future<Either<Failure, String>> changePassword(
      String newPassword, int accountId) async {
    return safeCall(() async {
      final result = await forgotPasswordRemoteDataSource.changePassword(
        newPassword,
        accountId,
      );
      return right(result);
    });
  }
}
