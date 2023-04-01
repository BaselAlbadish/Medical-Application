import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../my_text.dart';

class RecommendationItem extends StatelessWidget {
  RecommendationItem({required this.imagePath,required this.recommendationTitle,Key? key}) : super(key: key);

  String imagePath;
  String recommendationTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 35.w,
            height: 35.h,
          ),
          SizedBox(
            width: 10.w,
          ),
          MyText(
            text: recommendationTitle,
            fontSize: 15.sp,
            // color: KMediumBlue,
          ),
        ],
      ),
    );
  }
}
