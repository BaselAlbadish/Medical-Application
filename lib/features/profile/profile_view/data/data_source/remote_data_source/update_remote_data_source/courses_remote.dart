
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mdcin_ca/core/network/network_client.dart';

import '../../../../../../../core/error/network_error_handeler.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../APIs_constants.dart';

abstract class CourseRemote {
  Future<Unit> updateCourses(String token, Course course);

  Future<Unit> deleteCourses(String token, int id);

  Future<int> addCourses(String token, Course course);

}

class CourseRemoteImpl implements CourseRemote {
  NetworkClient networkClient;

  CourseRemoteImpl(this.networkClient);

  @override
  Future<int> addCourses(String token, Course course) async {
    FormData formData = FormData.fromMap(course.toJson());
    final response = await networkClient.post(POST_ADD_COURSE_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return response.data["result"]["id"];
  }

  @override
  Future<Unit> deleteCourses(String token, int id) async {
    FormData formData = FormData.fromMap({"courseOrTrainingId": id});
    final response = await networkClient.post(POST_DELETE_COURSE_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }

  @override
  Future<Unit> updateCourses(String token, Course course) async {
    FormData formData = FormData.fromMap(course.toJson());
    final response = await networkClient.post(POST_UPDATE_COURSE_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }

}