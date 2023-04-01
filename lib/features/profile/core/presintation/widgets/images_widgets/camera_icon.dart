import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../profile_view/presentation/blocs/images/images_bloc.dart';
import '../../../../profile_view/presentation/widgets/image_alerts/alertdialog_image.dart';
import '../../../../profile_view/presentation/widgets/image_alerts/alertdialog_image_choice.dart';

class CameraIcon extends StatelessWidget {
  const CameraIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagesBloc, ImagesState>(
      builder: (context, state) {
        return InkWell(
          child: state.coverImage == "" && state.newCoverImage == null
              ? Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 40.w,
                )
              : Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 40.w,
                ),
          onTap: () async {
            if (state.coverImage == "" && state.newCoverImage == null) {
              ImagesState state = await showDialog(
                barrierDismissible: false,
                builder: (context) => ImageDialogChoice(isProfile: false),
                context: context,
              );
              context.read<ImagesBloc>().add(UpdateState(state));
            } else {
              ImagesState state = await showDialog(
                barrierDismissible: false,
                builder: (context) => DialogImage(isProfile: false),
                context: context,
              );
              context.read<ImagesBloc>().add(UpdateState(state));
            }
          },
        );
      },
    );
  }
}
