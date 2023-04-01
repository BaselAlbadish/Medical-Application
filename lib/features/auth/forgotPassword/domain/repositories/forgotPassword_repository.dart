import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';

abstract class ForgotPasswordRepository {
  Future<Either<Failure, Map>> verifyByEmailOrPhone(
    String emailOrPassword,
  );
  Future<Either<Failure, String>> confirmEmailOrPhoneByCode(
    String code,
    String hashCode,
  );
  Future<Either<Failure, String>> changePassword(
    String newPassword,
    int accountId,
  );
}
