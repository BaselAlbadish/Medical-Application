import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/core_constants.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Mdcin",
          style: TextStyle(
              fontSize: 35.sp,
              color: KMediumBlue
          ),
        ),
      ],
    );
  }
}
