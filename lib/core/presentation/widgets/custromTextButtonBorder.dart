import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';

class CustomTextButtonBorder extends StatelessWidget {
  Color? color;
  Widget? text;
  Color? colorText;
  VoidCallback? onPressed;

  CustomTextButtonBorder({
    this.text,
    this.onPressed,
    this.color = kPrimaryColor,
    this.colorText = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(
            Size(250.w, 40.h),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              width: 1,
              color: colorText!,
              style: BorderStyle.solid,
            ),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: text!);
  }
}
