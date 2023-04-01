import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/presentation/responsive_logic/logic.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/blocs/images/images_bloc.dart';
import '../../../../../../core/network/general_constants.dart';
import '../../../../../../core/presentation/core_constants.dart';
import '../../../../core/utility/profile_store.dart';
import '../../constants.dart';
import '../my_text.dart';
import 'alertdialog_image_choice.dart';

class DialogImage extends StatelessWidget {
  DialogImage({required this.isProfile, this.image, Key? key}) : super(key: key);
  XFile? image;
  bool isProfile;

  @override
  Widget build(BuildContext context) {
    XFile? newImage;
    return BlocProvider(
      create: (context) => getIt<ImagesBloc>(),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: SizedBox(
          height: getScreenHeight(context) - 230.h,
          width: getScreenWidth(context),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                    child: Center(
                      child: Text(
                        'change Cover Image',
                        style: TextStyle(color: KMediumBlue, fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  BlocBuilder<ImagesBloc, ImagesState>(
                    builder: (context, state) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 30.h),
                        child: image == null
                            ? isProfile
                                ? state.profileImage == ""
                                    ? Image.asset("assets/images/default_image.png")
                                    : Image.network("$SERVER_MAIN_URI/image/${state.profileImage}", fit: BoxFit.cover)
                                : state.coverImage == ""
                                    ? Image.asset("assets/images/cover.png")
                                    : Image.network("$SERVER_MAIN_URI/image/${state.coverImage}", fit: BoxFit.cover)
                            : Image.file(
                                File(image!.path),
                                width: getScreenWidth(context),
                                height: 200.h,
                                fit: BoxFit.cover,
                              ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 38.h,
                        width: getScreenWidth(context) / 3,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: BlocBuilder<ImagesBloc, ImagesState>(
                          builder: (context, state) {
                            return TextButton(
                              child: MyText(
                                text: 'Edit Photo',
                                fontSize: 16.sp,
                              ),
                              onPressed: () async {
                                ImagesState state = await showDialog(
                                  barrierDismissible: false,
                                  builder: (context) => ImageDialogChoice(isProfile: isProfile),
                                  context: context,
                                );
                                Navigator.pop(context, state);
                                if (isProfile) {
                                  context.read<ImagesBloc>().add(EditProfileImage(state.newProfileImage));
                                } else {
                                  context.read<ImagesBloc>().add(EditCoverImage(state.newCoverImage));
                                }
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 38.h,
                        width: getScreenWidth(context) / 3,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: BlocBuilder<ImagesBloc, ImagesState>(
                          builder: (context, state) {
                            return TextButton(
                              child: MyText(
                                text: 'Delete Photo',
                                fontSize: 16.sp,
                              ),
                              onPressed: () {
                                if (newImage == null) {
                                  if (image == null) {
                                    if (isProfile) {
                                      context.read<ImagesBloc>().add(UpdateState(state.copyWith(profileImage: "")));
                                    }else{
                                      context.read<ImagesBloc>().add(UpdateState(state.copyWith(coverImage: "")));
                                    }
                                  } else {
                                    image = null;
                                    if (isProfile) {
                                      context.read<ImagesBloc>().add(EditProfileImage(image));
                                    } else {
                                      context.read<ImagesBloc>().add(EditCoverImage(image));
                                    }
                                  }
                                } else {
                                  newImage = null;
                                  if (isProfile) {
                                    context.read<ImagesBloc>().add(EditProfileImage(newImage));
                                  } else {
                                    context.read<ImagesBloc>().add(EditCoverImage(newImage));
                                  }
                                }
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h, top: 20.h),
                    child: Center(
                      child: Container(
                        height: alertButtonHeight.h,
                        width: alertButtonWidth.w,
                        decoration: const BoxDecoration(
                          color: KNewBlue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
                        child: BlocBuilder<ImagesBloc, ImagesState>(
                          builder: (context, state) {
                            return TextButton(
                              onPressed: () {
                                if (isProfile) {
                                  if (newImage == null) {
                                    context.read<ImagesBloc>().add(EditProfileImage(image));
                                    context.read<ImagesBloc>().add(const UpdateProfileEvent());
                                    getIt<ProfileStore>().setProfileImage(image);
                                    Navigator.pop(context, state.copyWith(newProfileImage: image));
                                  } else {
                                    context.read<ImagesBloc>().add(EditProfileImage(newImage));
                                    context.read<ImagesBloc>().add(const UpdateProfileEvent());
                                    getIt<ProfileStore>().setProfileImage(newImage);
                                    Navigator.pop(context, state.copyWith(newProfileImage: newImage));
                                  }
                                  if (state.profileImage == "") {
                                    getIt<ProfileStore>().setServerProfileImage(state.profileImage);
                                  }
                                } else {
                                  if (newImage == null) {
                                    context.read<ImagesBloc>().add(EditCoverImage(image));
                                    context.read<ImagesBloc>().add(const UpdateCoverEvent());
                                    getIt<ProfileStore>().setCoverImage(image);
                                    Navigator.pop(context, state.copyWith(newCoverImage: image));
                                  } else {
                                    context.read<ImagesBloc>().add(EditCoverImage(newImage));
                                    context.read<ImagesBloc>().add(const UpdateCoverEvent());
                                    getIt<ProfileStore>().setCoverImage(newImage);
                                    Navigator.pop(context, state.copyWith(newCoverImage: newImage));
                                  }
                                  if (state.coverImage == "") {
                                    getIt<ProfileStore>().setServerCoverImage(state.coverImage);
                                  }
                                }
                              },
                              child: Center(
                                child: Text(
                                  "Save",
                                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Back", style: TextStyle(fontSize: 25.sp)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
