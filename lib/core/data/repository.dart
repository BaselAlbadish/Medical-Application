import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/network/network_info.dart';

import '../error/exceptions.dart';
import '../error/failures.dart';

typedef SafeCallBody<RV> = Future<Either<Failure, RV>> Function();

abstract class BaseRepository {
  final NetworkInfo _networkInfo;

  BaseRepository(this._networkInfo);

  Future<Either<Failure, RV>> safeCall<RV>(SafeCallBody<RV> body) async {
    if (await _networkInfo.isConnected) {
      try {
        return await body();
      } on ServerException catch (e) {
        return left(NetworkFailure(e.statusCode, e.message));
      } on CacheException {
        return left(CacheFailure());
      } catch (e) {
        return left(UnknownFailure());
      }
    }
    return left(NetworkFailure(null, "Internet connection required"));
  }
}
