import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';

class CustomTextButton extends StatelessWidget {
  Color? color;
  Widget? text;
  Color? colorText;
  VoidCallback? onPressed;

  CustomTextButton({
    this.text,
    this.onPressed,
    this.color = kPrimaryColor,
    this.colorText = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            color!,
          ),
          minimumSize: MaterialStateProperty.all<Size>(
            Size(120.w, 40.h),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
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
