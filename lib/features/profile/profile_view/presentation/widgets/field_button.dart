import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_text.dart';

class FieldButton extends StatelessWidget {

  String? title;
  String? subTitle;
  Color? titleColor;
  Color? subTitleColor;
  Function()? onPressed;

  FieldButton(
      {required this.title,
        required this.subTitle,
        required this.onPressed,
        this.titleColor = Colors.black,
        this.subTitleColor = Colors.green,
        Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyText(
                text: title!,
                fontSize: 12.sp,
                color: titleColor,
              ),
              MyText(
                text: subTitle!,
                fontSize: 14.sp,
                color: subTitleColor,
              ),
            ],
          )),
    );
  }
}