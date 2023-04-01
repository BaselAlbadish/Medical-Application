import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/presentation/core_constants.dart';

class ShadowTextField extends StatelessWidget {
  String? errorLabel;
  String? title;
  String? hintText;
  double? fontSizeForTitle;
  double? fontSizeForHintText;
  Function(String)? onChange;
  Color? titleColor;
  Color? containerColor;
  Icon? icon;
  Icon? icon2;
  bool showPassword = false;
  double? height;
  double? width;
  String? initValue;
  TextInputType? type;

  ShadowTextField(
      {required this.hintText,
      this.initValue,
      required this.title,
      required this.fontSizeForHintText,
      required this.errorLabel,
      required this.fontSizeForTitle,
      required this.onChange,
      this.titleColor = KMediumBlue,
      this.containerColor = Colors.white,
      this.icon,
        this.type,
      this.icon2,
      this.height,
      this.width,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext buttonContext) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title.toString(),
          style: TextStyle(color: titleColor, fontSize: fontSizeForTitle),
        ),
        SizedBox(height: 15.h),
        Stack(
          children: <Widget>[
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: containerColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              ),
            ),
            SizedBox(
              height: 60.h,
              width: width,
              child: Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: TextFormField(
                  initialValue: initValue,
                  keyboardType: type,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: hintText,
                    hintStyle: TextStyle(color: const Color(0xff9d9d9d).withOpacity(0.5)),
                    errorText: errorLabel == '' ? null : errorLabel,
                    border: InputBorder.none,
                    icon: icon,
                  ),
                  onChanged: onChange,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
