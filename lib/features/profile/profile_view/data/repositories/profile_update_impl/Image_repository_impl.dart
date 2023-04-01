import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/images_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/Image_repository.dart';
import '../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../core/network/network_info.dart';
import '../../../../../../core/utility/local_datasource/local_data_source.dart';

class ImageRepositoryImpl implements ImageRepository {
  final ImageRemote imageRemote;
  final NetworkInfo networkInfo;

  ImageRepositoryImpl(this.networkInfo, this.imageRemote);

  @override
  Future<Either<Failure, Unit>> updateCoverImage(String token, String? oldName, XFile? image) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(imageRemote.updateCoverImage(token, oldName, image));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }

  @override
  Future<Either<Failure, String>> updateProfileImage(String token, String? oldName, XFile? image) async {
    if (await networkInfo.isConnected) {
      final res = await catchExceptions(imageRemote.updateProfileImage(token, oldName, image));
      return res.fold((l) => left(l), (r) => right(r));
    }
    return left(UnknownFailure());
  }
}
