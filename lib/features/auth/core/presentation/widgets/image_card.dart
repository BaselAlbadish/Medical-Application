import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class ImageCard extends StatelessWidget {
  ImageCard({required this.index, Key? key}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.white,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(images[index]),
            ),
          ),
        ),
        SizedBox(height: 30.h),
        Container(
          margin: EdgeInsets.only(right: 10.w, left: 10.w),
          child: Center(
            child: Text(
              texts[index],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.sp),
            ),
          ),
        ),
      ],
    );
  }
}
