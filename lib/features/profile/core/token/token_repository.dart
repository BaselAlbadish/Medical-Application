import 'dart:convert';

import 'package:mdcin_ca/core/error/exceptions.dart';
import 'package:mdcin_ca/core/utility/local_datasource/local_data_source.dart';

class TokenRepository {
  LocalDataSource localDataSource;

  TokenRepository({required this.localDataSource});

  Future<String> getToken() async {
    var jwt = await localDataSource.get("token");
    if (jwt == null) {
      return "";
    }
    return jwt.toString();
  }

  void setToken(String token) {
    localDataSource.cacheValue("token", token);
  }

  dynamic getPayload(String jwt) {
    return json.decode(ascii.decode(base64.decode(base64.normalize(jwt.split('.')[1]))));
  }
}
