import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/core/network/network_client.dart';

import '../../../../../../../core/error/network_error_handeler.dart';
import '../APIs_constants.dart';

abstract class ImageRemote {
  Future<String> updateProfileImage(String token, String? oldName, XFile? image);

  Future<Unit> updateCoverImage(String token, String? oldName, XFile? image);
}

class ImageRemoteImpl implements ImageRemote {
  NetworkClient networkClient;

  ImageRemoteImpl(this.networkClient);

  @override
  Future<String> updateProfileImage(String token, String? oldName, XFile? image) async {
    FormData formData;
    if (image == null) {
      formData = FormData.fromMap({});
    } else {
      File file = File(image.path);

      final package = await MultipartFile.fromFile(file.path);
      formData = FormData.fromMap({
        "image": package,
      });
    }

    final response = await networkClient.post(POST_UPDATE_PROFILE_IMAGE_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return response.data["token"];
  }

  @override
  Future<Unit> updateCoverImage(String token, String? oldName, XFile? image) async {
    FormData formData;
    if (image == null) {
      formData = FormData.fromMap({});
    } else {
      File file = File(image.path);
      formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(file.path),
        "oldBackgroundImageName": oldName,
      });
    }
    final response = await networkClient.post(POST_UPDATE_COVER_IMAGE_API, formData, {"token": token});
    handleStatusCode(response.statusCode);
    return unit;
  }
}
