import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';

abstract class BasicInfoRepository {
  Future<Either<Failure, String>> updateBasicInfo(String token, BasicInfo basicInfo);
}
