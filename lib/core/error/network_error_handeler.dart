import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'exceptions.dart';

void handleStatusCode(int? statusCode) {
  if (statusCode == null) {
    throw ServerException(null, "Unknown error occurred");
  } else {
    if (statusCode == 200) {
      return;
    } else if (statusCode == 401) {
      throw ServerException(401, "Unauthorized");
    } else if (statusCode == 500) {
      throw ServerException(500, "Server Error");
    } else if (statusCode == 403) {
      throw ServerException(403, "ForBidden");
    } else if (statusCode == 429) {
      throw ServerException(429, "To many Requests");
    } else if (statusCode == 429) {
      throw ServerException(404, "Not Found");
    } else {
      throw ServerException(null, "Unknow error occured");
    }
  }
}

Future<Either<Failure, dynamic>> catchExceptions(Future<dynamic> callback) async {
  try {
    return right(await callback);
  } on ServerException catch (e) {
    return left(NetworkFailure(e.statusCode, e.message));
  } on CacheException {
    return left(CacheFailure());
  } on Exception {
    return left(UnknownFailure());
  }
}
