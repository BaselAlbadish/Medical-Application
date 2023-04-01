import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/presentation/core_constants.dart';
import 'my_text.dart';

class GroupFollow extends StatelessWidget {
  String? groupName;
  int numberOfMembers;
  Color levelColor;

  GroupFollow(
      {
      required this.levelColor,
      required this.groupName,
      required this.numberOfMembers,
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
                  backgroundColor: Colors.white,
                  backgroundImage: const AssetImage("assets/images/md.png"),
                  radius: 37.w,
                ),
              ),
              SizedBox(width: 18.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: groupName,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: KDarkBlue,
                  ),
                  SizedBox(height: 5.h),
                  MyText(
                    text: "$numberOfMembers members",
                    fontSize: 12.sp,
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
                      "Exit Group",
                      style: TextStyle(color: KNewBlue, fontSize: 9.sp),
                    ),
                    onPressed: () {})),
          )
        ],
      ),
    );
  }
}
