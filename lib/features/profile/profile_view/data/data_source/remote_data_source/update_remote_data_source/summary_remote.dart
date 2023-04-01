import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../../core/network/network_client.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../APIs_constants.dart';

abstract class SummaryRemote {
  Future<Unit> updateSummary({required String token,required UserSummary oldSummary,required UserSummary newSummary});
}

class SummaryRemoteImpl implements SummaryRemote {
  final NetworkClient networkClient;

  SummaryRemoteImpl(this.networkClient);

  @override
  Future<Unit> updateSummary({required String token,required UserSummary oldSummary,required UserSummary newSummary}) async {
    FormData formData = FormData.fromMap({
      "oldDetails": oldSummary.value,
      "newDetails": newSummary.value,
    });
    final response = await networkClient.post(POST_UPDATE_SUMMARY_API, formData, {"token": token});
    print(response.statusCode);
    print(response);
    handleStatusCode(response.statusCode);
    return unit;
  }
}
