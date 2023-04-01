abstract class Failure {}

class NetworkFailure extends Failure {
  int? statusCode;
  String message;

  NetworkFailure(this.statusCode, this.message);

  @override
  String toString() => message;

}

class UnknownFailure extends Failure {}

class CacheFailure extends Failure {}
