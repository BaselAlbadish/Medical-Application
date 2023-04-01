import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mdcin_ca/core/network/network_client.dart';

import '../../../../../../../core/error/network_error_handeler.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../APIs_constants.dart';

abstract class SkillRemote {
  Future<Unit> updateSkills(String token, Skill skill);

  Future<int> addSkills(String token, Skill skill);

  Future<Unit> deleteSkills(String token, int id);
}

class SkillRemoteImpl implements SkillRemote {
  NetworkClient networkClient;

  SkillRemoteImpl(this.networkClient);

  @override
  Future<Unit> deleteSkills(String token, int id) async {
    FormData formData = FormData.fromMap({"skillInfoId": id});
    final response = await networkClient.post(POST_DELETE_SKILL_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }

  @override
  Future<Unit> updateSkills(String token, Skill skill) async {
    FormData formData = FormData.fromMap(skill.toJson());
    final response = await networkClient.post(POST_UPDATE_SKILL_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }

  @override
  Future<int> addSkills(String token, Skill skill) async {
    FormData formData = FormData.fromMap(skill.toJson());
    final response = await networkClient.post(POST_ADD_SKILL_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return response.data["result"]["id"];
  }
}
