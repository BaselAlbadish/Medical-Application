import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../../core/presentation/core_constants.dart';
import '../../../../../../core/presentation/responsive_logic/logic.dart';
import '../../blocs/images/images_bloc.dart';
import '../../constants.dart';
import 'alertdialog_image.dart';

class ImageDialogChoice extends StatelessWidget {
  ImageDialogChoice({required this.isProfile, Key? key}) : super(key: key);

  bool isProfile;

  @override
  Widget build(BuildContext context) {
    ImagePicker picker = ImagePicker();
    return AlertDialog(
      title: Center(
        child: Text(
          'Add profile photo',
          style: TextStyle(fontSize: 25.sp, color: Colors.black),
        ),
      ),
      content: SizedBox(
        height: getScreenHeight(context) - 500.h,
        width: getScreenWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                XFile? image = await picker.pickImage(source: ImageSource.gallery);

                ImagesState state = await showDialog(
                  barrierDismissible: false,
                  builder: (context) => DialogImage(image: image, isProfile: isProfile),
                  context: context,
                );
                Navigator.pop(context, state);
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.drive_folder_upload,
                    color: KNewBlue,
                    size: 30.sp,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Upload from gallery',
                    style: TextStyle(fontSize: 20.sp, color: KNewBlue),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () async {
                XFile? image =
                    await picker.pickImage(source: ImageSource.camera, preferredCameraDevice: CameraDevice.front);

                ImagesState state = await showDialog(
                  barrierDismissible: false,
                  builder: (context) => DialogImage(image: image, isProfile: isProfile),
                  context: context,
                );

                Navigator.pop(context, state);
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.camera_alt_outlined,
                    color: KNewBlue,
                    size: 30.sp,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Take a photo',
                    style: TextStyle(fontSize: 20.sp, color: KNewBlue),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: alertButtonHeight.h,
                width: alertButtonWidth.w - 30.w,
                decoration: const BoxDecoration(
                  color: KNewBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      "Back",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
    );
  }
}
