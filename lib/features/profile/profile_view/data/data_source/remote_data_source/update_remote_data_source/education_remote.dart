import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mdcin_ca/core/network/network_client.dart';

import '../../../../../../../core/error/network_error_handeler.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../APIs_constants.dart';

abstract class EducationRemote {
  Future<Unit> updateEducation(String token, Education education);

  Future<Unit> deleteEducation(String token, int id);

  Future<Unit> addEducation(String token, Education education);

  Future<Unit> addCertification(String token, int educationId, File certification);

  Future<Unit> updateCertification(String token, int educationId, File certification);

  Future<Unit> deleteCertification(String token, int educationId);
}

class EducationRemoteImpl implements EducationRemote {
  NetworkClient networkClient;

  EducationRemoteImpl(this.networkClient);

  @override
  Future<Unit> addCertification(String token, int educationId, File certification) async {
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(certification.path),
      "educationInfoId": educationId,
    });
    final response = await networkClient.post(POST_ADD_CERTIFICATION_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }

  @override
  Future<Unit> deleteCertification(String token, int id) async {
    FormData formData = FormData.fromMap({
      "educationInfoId": id,
    });
    final response = await networkClient.post(POST_DELETE_CERTIFICATION_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }

  @override
  Future<Unit> updateCertification(String token, int educationId, File certification) async {
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(certification.path),
      "educationInfoId": educationId,
    });
    final response = await networkClient.post(POST_UPDATE_CERTIFICATION_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }

  @override
  Future<Unit> addEducation(String token, Education education) async {
    FormData formData = FormData.fromMap(education.toJson());
    final response = await networkClient.post(POST_ADD_EDUCATION_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }

  @override
  Future<Unit> deleteEducation(String token, int id) async {
    FormData formData = FormData.fromMap({"educationId": id});
    final response = await networkClient.post(POST_DELETE_EDUCATION_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }

  @override
  Future<Unit> updateEducation(String token, Education education) async {
    FormData formData = FormData.fromMap(education.toJson());
    final response = await networkClient.post(POST_UPDATE_EDUCATION_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }
}
