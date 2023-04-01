import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mdcin_ca/core/network/network_client.dart';

import '../../../../../../../core/error/network_error_handeler.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../APIs_constants.dart';

abstract class ExperienceRemote {
  Future<Unit> updateExperience(String token, Experience experience);

  Future<Unit> deleteExperience(String token, int id);

  Future<int> addExperience(String token, Experience experience);
}

class ExperienceRemoteImpl implements ExperienceRemote {
  NetworkClient networkClient;

  ExperienceRemoteImpl(this.networkClient);

  @override
  Future<int> addExperience(String token, Experience experience) async {
    String startDate =
        '${experience.startDate!.year.toString()}-${experience.startDate!.month.toString()}-${experience.startDate!.day.toString()}';
    String endDate =
        '${experience.endDate!.year.toString()}-${experience.endDate!.month.toString()}-${experience.endDate!.day.toString()}';
    FormData formData = FormData.fromMap({
      "startDate": startDate,
      "endDate": endDate,
      "companyName": experience.companyName,
      "positionName": experience.positionName,
      "employeeTypeName": experience.employeeType,
      "locationId": experience.location!.id
    });
    final response = await networkClient.post(POST_ADD_EXPERIENCE_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return response.data["result"]["id"];
  }

  @override
  Future<Unit> deleteExperience(String token, int id) async {
    FormData formData = FormData.fromMap({"experiencesId": id});
    final response = await networkClient.post(POST_DELETE_EXPERIENCE_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }

  @override
  Future<Unit> updateExperience(String token, Experience experience) async {
    String startDate =
        '${experience.startDate!.year.toString()}-${experience.startDate!.month.toString()}-${experience.startDate!.day.toString()}';
    String endDate =
        '${experience.endDate!.year.toString()}-${experience.endDate!.month.toString()}-${experience.endDate!.day.toString()}';
    FormData formData = FormData.fromMap({
      "startDate": startDate,
      "endDate": endDate,
      "experiencesId" : experience.id,
      "companyName": experience.companyName,
      "positionName": experience.positionName,
      "employeeTypeName": experience.employeeType,
      "locationId": experience.location!.id
    });
    final response = await networkClient.post(POST_UPDATE_EXPERIENCE_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }
}
