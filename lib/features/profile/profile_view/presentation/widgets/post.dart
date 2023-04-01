import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../core/presentation/core_constants.dart';
import '../../../../../core/presentation/responsive_logic/logic.dart';
import 'my_text.dart';

class Post extends StatelessWidget {
  String? name;
  String? job;
  String? date;
  String? post;
  String? imagePostPath;

  Post({this.name, this.job, this.date, this.post, this.imagePostPath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.w, bottom: 10.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: const AssetImage('assets/images/profile.jpg'),
                        radius: 25.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: name!,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            MyText(
                              text: job!,
                              fontSize: 15.sp,
                              color: KNewBlue,
                            ),
                            MyText(
                              text: date!,
                              fontSize: 10.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      size: 30.w,
                    ),
                    color: Colors.grey,
                    onPressed: () {
                      //TODO
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
              child: MyText(text: post!, fontSize: 16.sp),
            ),
            InkWell(
              onLongPress: () {
                //like = !like;
              },
              child: Image.asset(
                imagePostPath!,
                fit: BoxFit.fill,
                width: getScreenWidth(context),
                height: getScreenWidth(context) - 60,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
              child: Row(
                children: [
                  Container(
                    height: 35.h,
                    width: getScreenWidth(context) - 110,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: EdgeInsets.only(left: 5.w, top: 7.h),
                          child: const Icon(
                            Icons.mode_comment_outlined,
                            color: Colors.black54,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'your comment',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  InkWell(
                    child: Tab(
                      icon: Image.asset(
                        'assets/images/like.png',
                        width: 20.w,
                        height: 20.h,
                        color: Colors.black54,
                        //color: like ? Colors.black : KGrey,
                      ),
                    ),
                    onTap: () {
                      //like = !like;
                    },
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    child: Tab(
                      icon: Image.asset(
                        'assets/images/dislike.png',
                        width: 20.w,
                        height: 20.h,
                        color: Colors.black54,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
