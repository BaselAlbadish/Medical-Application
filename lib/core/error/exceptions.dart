abstract class Exception {
  Exception(String s);
}

class ServerException implements Exception {
  int? statusCode;
  String message;

  ServerException(this.statusCode, this.message);
}

class CacheException implements Exception {}

class NoConnectionException implements Exception {}