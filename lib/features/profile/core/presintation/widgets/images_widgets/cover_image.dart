import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../../core/network/general_constants.dart';
import '../../../../../../core/presentation/responsive_logic/logic.dart';
import '../../../../profile_view/presentation/blocs/images/images_bloc.dart';
import '../../../../profile_view/presentation/widgets/image_alerts/alertdialog_image.dart';
import '../../../../profile_view/presentation/widgets/image_alerts/alertdialog_image_choice.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagesBloc, ImagesState>(
      builder: (context, state) {
        return state.newCoverImage != null
            ? Image.file(
                File(state.newCoverImage!.path),
                width: getScreenWidth(context),
                height: 179.h,
                fit: BoxFit.cover,
              )
            : state.coverImage == ""
                ? Image.asset(
                    'assets/images/cover.png',
                    height: 179.h,
                    width: getScreenWidth(context),
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    "$SERVER_MAIN_URI/image/${state.coverImage}",
                    height: 179.h,
                    width: getScreenWidth(context),
                    fit: BoxFit.cover,
                  );
      },
    );
  }
}
