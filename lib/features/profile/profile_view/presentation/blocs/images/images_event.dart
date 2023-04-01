part of 'images_bloc.dart';

@freezed
abstract class ImagesEvent with _$ImagesEvent {
  const factory ImagesEvent.updateState(ImagesState state) = UpdateState;

  const factory ImagesEvent.updateProfileEvent() = UpdateProfileEvent;

  const factory ImagesEvent.updateCoverEvent() = UpdateCoverEvent;

  const factory ImagesEvent.editProfileImage(XFile? profileImage) = EditProfileImage;

  const factory ImagesEvent.editCoverImage(XFile? coverImage) = EditCoverImage;
}
