import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSizeBox extends StatelessWidget {
  double height;
  double width;
  Widget? widget;

  CustomSizeBox({
    Key? key,
    this.height = 10,
    this.width = 10,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: widget,
    );
  }
}
