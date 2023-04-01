import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../core/network/general_constants.dart';
import '../../../../profile_view/presentation/blocs/images/images_bloc.dart';
import '../../../../profile_view/presentation/widgets/image_alerts/alertdialog_image.dart';
import '../../../../profile_view/presentation/widgets/image_alerts/alertdialog_image_choice.dart';

class ProfileImage extends StatelessWidget {
  ProfileImage({required this.levelColor,Key? key}) : super(key: key);
  Color levelColor;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagesBloc, ImagesState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: levelColor,
              width: 1.5.w,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(80)),
          ),
          child: InkWell(
            child: state.newProfileImage != null
                ? CircleAvatar(
                    radius: 70.w,
                    backgroundImage: FileImage(
                      File(state.newProfileImage!.path),
                    ),
                  )
                : state.profileImage == ""
                    ? CircleAvatar(
                        backgroundImage: const AssetImage("assets/images/default_image.png"),
                        radius: 70.w,
                      )
                    : CircleAvatar(
                        backgroundImage: NetworkImage(
                          "$SERVER_MAIN_URI/image/${state.profileImage}",
                        ),
                        radius: 70.w,
                      ),
            onTap: () async {
              if (state.profileImage == "" && state.newProfileImage == null) {
                ImagesState state = await showDialog(
                  barrierDismissible: false,
                  builder: (context) => ImageDialogChoice(isProfile: true),
                  context: context,
                );
                context.read<ImagesBloc>().add(UpdateState(state));
              } else {
                ImagesState state = await showDialog(
                  barrierDismissible: false,
                  builder: (context) => DialogImage(isProfile: true),
                  context: context,
                );
                context.read<ImagesBloc>().add(UpdateState(state));
              }
            },
          ),
        );
      },
    );
  }
}
