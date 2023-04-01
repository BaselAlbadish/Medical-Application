import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/core/error/failures.dart';

abstract class ImageRepository {
  Future<Either<Failure, String>> updateProfileImage(String token, String? oldName, XFile? image);

  Future<Either<Failure, Unit>> updateCoverImage(String token, String? oldName, XFile? image);
}
