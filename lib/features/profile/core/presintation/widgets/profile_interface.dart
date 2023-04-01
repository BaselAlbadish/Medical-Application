import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/configure_di.dart';

import '../../../../../core/presentation/responsive_logic/logic.dart';
import '../../../profile_view/presentation/blocs/images/images_bloc.dart';
import 'images_widgets/camera_icon.dart';
import 'images_widgets/cover_image.dart';
import 'images_widgets/profile_image.dart';

class ProfileInterface extends StatelessWidget {
  ProfileInterface({required this.levelColor, Key? key}) : super(key: key);

  Color levelColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 179.h / 4),
          child: const CoverImage(),
        ),
        Positioned(
          top: 179.h / 2,
          child: ProfileImage(levelColor: levelColor),
        ),
        Positioned(
          right: getScreenWidth(context) / 12,
          top: 40.h / 2,
          child: const CameraIcon(),
        ),
      ],
    );
  }
}
