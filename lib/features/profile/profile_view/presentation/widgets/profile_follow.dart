import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/widgets/my_text.dart';
import '../../../../../core/presentation/core_constants.dart';

class ProfileFollow extends StatelessWidget {
  String? name;
  String? job;
  String? textButtonTitle;
  bool? individualProfile;

  Color levelColor;

  ProfileFollow(
      {
      required this.levelColor,
      required this.name,
      required this.job,
      this.textButtonTitle,
      this.individualProfile = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: levelColor,
                      width: 1.5.w,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                  ),
                  child: CircleAvatar(
                    backgroundImage: const AssetImage('assets/images/profile2.png'),
                    radius: 37.w,
                  )),
              SizedBox(width: 18.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: name,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: KDarkBlue,
                  ),
                  MyText(
                    text: job,
                    fontSize: 14.sp,
                    color: KNewBlue,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.h),
            child: Container(
                height: 25.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: KNewBlue),
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                child: TextButton(
                    child: Text(
                      textButtonTitle!,
                      style: TextStyle(color: KNewBlue, fontSize: 9.sp),
                    ),
                    onPressed: () {})),
          )
        ],
      ),
    );
  }
}
