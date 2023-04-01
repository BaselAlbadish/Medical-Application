import 'package:dio/dio.dart';
import 'package:mdcin_ca/core/error/exceptions.dart';
import 'package:mdcin_ca/core/error/network_error_handeler.dart';
import 'package:mdcin_ca/core/network/network_client.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/data/datasources/constraint.dart';

abstract class ForgotPasswordRemoteDataSource {
  Future<Map> verifyByEmailOrPhone(String emailOrPassword);
  Future<String> confirmEmailOrPhoneByCode(String code, String hashCode);
  Future<String> changePassword(String newPassword, int accountId);
}

class ForgotPasswordRemoteDataSourceImp
    implements ForgotPasswordRemoteDataSource {
  final NetworkClient networkClient;

  ForgotPasswordRemoteDataSourceImp(this.networkClient);

  @override
  Future<Map> verifyByEmailOrPhone(String emailOrPassword) async {
    try {
      final result = await networkClient.get(VERIFY_BY_EMAIL, queryParams: {
        "email": emailOrPassword,
      });
      return result.data;
    } on ServerException catch (e) {
      throw ServerException(e.statusCode, "email not found ");
    }
  }

  @override
  Future<String> confirmEmailOrPhoneByCode(String code, String hashCode) async {
    try {
      final result = await networkClient
          .get(CONFIRM_EMAIL, queryParams: {"code": code, "hashCode": hashCode});
      return result.data["message"];
    } on ServerException catch (e) {
      throw ServerException(e.statusCode, "wrong code!!");
    }
  }

  @override
  Future<String> changePassword(String newPassword, int accountId) async {
    FormData formData =
        FormData.fromMap({"newPassword": newPassword, "accountId": accountId});
    try {
      final result = await networkClient.post(CHANGE_PASSWORD, formData);
      return result.data["message"];
    } on ServerException catch (e) {
      throw ServerException(e.statusCode, "password is not correct");
    }
  }
}
