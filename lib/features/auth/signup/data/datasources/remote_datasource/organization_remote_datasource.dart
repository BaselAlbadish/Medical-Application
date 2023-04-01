import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../../../core/error/exceptions.dart';
import '../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../core/network/network_client.dart';
import '../../../../../../core/utility/local_datasource/local_data_source.dart';
import '../../../../signin/data/datasources/local_datasource/constants.dart';
import '../../../domain/entities/organization/organization_model.dart';
import '../constants.dart';

abstract class OrganizationRemoteDataSource {
  Future<List<PrimaryBusiness>> getAllPrimaryBusiness();
  //organization
  Future<Map> signUpOrganization(OrganizationModel organizationModel);
  //verification email
  Future<Map> sendCodeInEmail(String email);
  Future<String> confirmEmailCode(String hashCode, String code);
  //image
  Future<String> uploadImage(File image);
}

class OrganizationRemoteDataSourceImpl implements OrganizationRemoteDataSource {
  late NetworkClient networkClient;
  LocalDataSource localDataSource;
  OrganizationRemoteDataSourceImpl(this.networkClient, this.localDataSource);

  @override
  Future<List<PrimaryBusiness>> getAllPrimaryBusiness() async {
    final result = await networkClient.get(GET_PRIMARY_BUSINESS);
    handleStatusCode(result.statusCode);
    return _ConvertObjectToData<PrimaryBusiness>(
      result.data['primaryBusinesses'],
      PrimaryBusiness.fromJson,
    );
  }

  @override
  Future<Map> signUpOrganization(OrganizationModel organizationModel) async {
    try {
      FormData formData = FormData.fromMap(organizationModel.toJson());
      final result = await networkClient.post(
        POST_SIGN_UP_ORGANIZATION,
        formData,
      );
      localDataSource.cacheValue(KEY_AUTH_TOKEN, result.data["token"]);
      var token = await localDataSource.get(KEY_AUTH_TOKEN);
      return result.data;
    } on DioError catch (e) {
      if (e.response?.statusCode == 500) {
        throw ServerException(
          e.response!.statusCode,
          e.response!.data["message"],
        );
      } else {
        handleStatusCode(e.response?.statusCode);
        return {};
      }
    }
  }

  @override
  Future<Map> sendCodeInEmail(String email) async {
    try {
      final result = await networkClient.get(
        GET_VERIFY_EMAIL,
        queryParams: {"email": email},
      );
      return result.data;
    } on DioError catch (e) {
      if (e.response?.statusCode == 400) {
        throw ServerException(
          e.response!.statusCode,
          e.response!.data["message"],
        );
      } else {
        handleStatusCode(e.response?.statusCode);
        return {};
      }
    }
  }

  @override
  Future<String> confirmEmailCode(String hashCode, String code) async {
    try {
      final result = await networkClient.get(
        GET_VERIFY_EMAIL_CODE,
        queryParams: {"hashCode": hashCode, "code": code},
      );
      return result.data["message"];
    } on DioError catch (e) {
      if (e.response?.statusCode == 400) {
        throw ServerException(
          e.response!.statusCode,
          e.response!.data["message"],
        );
      } else {
        handleStatusCode(e.response?.statusCode);
        return "";
      }
    }
  }

  @override
  Future<String> uploadImage(File image) async {
    try {
      String fileName = image.path.split('/').last;
      FormData formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(image.path, filename: fileName),
      });

      var result = await networkClient.post(
        POST_UPDATE_PROFILE_IMAGE,
        formData,
        {
          "token": await localDataSource.get(KEY_AUTH_TOKEN),
        },
      );
      return result.data["message"];
    } on DioError catch (e) {
      if (e.response?.statusCode == 400) {
        throw ServerException(
          e.response!.statusCode,
          e.response!.data["message"],
        );
      } else {
        handleStatusCode(e.response?.statusCode);
        return "";
      }
    }
  }

  List<T> _ConvertObjectToData<T>(
    List data,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    List<T> listModel = [];
    for (Map<String, dynamic> item in data) {
      listModel.add(fromJson(item));
    }
    return listModel;
  }
}
