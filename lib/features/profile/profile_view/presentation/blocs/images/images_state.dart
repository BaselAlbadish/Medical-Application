part of 'images_bloc.dart';

@freezed
abstract class ImagesState with _$ImagesState {
  const factory ImagesState({
    required String profileImage,
    required String coverImage,
    required XFile? newProfileImage,
    required XFile? newCoverImage,
    required Option<Either<Failure, Unit>> updateCoverImageResponse,
    required Option<Either<Failure, String>> updateProfileImageResponse,
  }) = _ImagesState;

  factory ImagesState.initial({required String profileImage, required String coverImage}) => ImagesState(
        profileImage: profileImage,
        coverImage: coverImage,
        updateCoverImageResponse: none(),
        updateProfileImageResponse: none(),
        newProfileImage: null,
        newCoverImage: null,
      );
}
