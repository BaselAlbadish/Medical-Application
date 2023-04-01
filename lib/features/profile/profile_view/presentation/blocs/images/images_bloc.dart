import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/Image_repository.dart';
import '../../../../../../configure_di.dart';
import '../../../../../../core/error/failures.dart';
import '../../../../core/token/token_repository.dart';

part 'images_event.dart';

part 'images_state.dart';

part 'images_bloc.freezed.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  ImageRepository imageRepository;

  ImagesBloc({required this.imageRepository})
      : super(ImagesState.initial(
          profileImage: getIt<ProfileStore>().getServerProfileImage().toString(),
          coverImage: getIt<ProfileStore>().getServerCoverImage().toString(),
        )) {

    on<UpdateState>((event, emit) {
      emit(event.state);
    });

    on<UpdateProfileEvent>((event, emit) async {
      String token = await getIt<TokenRepository>().getToken();
      final response =
          await imageRepository.updateProfileImage(token.toString(), state.profileImage, state.newProfileImage);
      if (response.isRight()) {
        getIt<TokenRepository>().setToken(response.getOrElse(() => ""));
      }
      emit(state.copyWith(updateProfileImageResponse: some(response)));
    });

    on<UpdateCoverEvent>((event, emit) async {
      String token = await getIt<TokenRepository>().getToken();
      final response = await imageRepository.updateCoverImage(token.toString(), state.coverImage, state.newCoverImage);
      emit(state.copyWith(updateCoverImageResponse: some(response)));
    });

    on<EditProfileImage>((event, emit) {
      emit(state.copyWith(newProfileImage: event.profileImage));
    });

    on<EditCoverImage>((event, emit) {
      emit(state.copyWith(newCoverImage: event.coverImage));
    });
  }
}
