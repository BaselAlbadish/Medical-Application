import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:mdcin_ca/core/network/network_client.dart';
import '../../../../../../../configure_di.dart';
import '../../../../../../../core/error/network_error_handeler.dart';
import '../../../../../core/token/token_repository.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../APIs_constants.dart';

abstract class BasicInfoRemote {
  Future<String> updateBasicInfo(String token, BasicInfo basicInfo);
}

class BasicInfoRemoteImpl implements BasicInfoRemote {
  NetworkClient networkClient;

  BasicInfoRemoteImpl(this.networkClient);

  @override
  Future<String> updateBasicInfo(String token, BasicInfo basicInfo) async {
    String dateString =
        '${basicInfo.birthDate!.year.toString()}-${basicInfo.birthDate!.month.toString()}-${basicInfo.birthDate!.day.toString()}';
    FormData formData = FormData.fromMap({
      "firstName": basicInfo.firstName,
      "lastName": basicInfo.lastName,
      "birthDate": dateString,
      "primaryProfessionName": basicInfo.primaryProfession!.name,
      "locationId": basicInfo.primaryLocation!.country.name,
      "gender": basicInfo.gender
    });
    final response = await networkClient.post(POST_UPDATE_BASIC_INFO_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return response.data["token"];
  }
}
