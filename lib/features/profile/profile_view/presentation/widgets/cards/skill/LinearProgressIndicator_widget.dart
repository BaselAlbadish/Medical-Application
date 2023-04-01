import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/presentation/responsive_logic/logic.dart';

class LinearProgressIndicatorWidget extends StatefulWidget {
  double? progressValue;

  LinearProgressIndicatorWidget({required this.progressValue, Key? key}) : super(key: key);

  @override
  _LinearProgressIndicatorWidgetState createState() => _LinearProgressIndicatorWidgetState();
}

class _LinearProgressIndicatorWidgetState extends State<LinearProgressIndicatorWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: 25.h,
          width: getScreenWidth(context) / 1.7,
          child: LinearProgressIndicator(
            minHeight: 20.h,
            backgroundColor: Colors.black12,
            valueColor: const AlwaysStoppedAnimation<Color>(KMediumBlue),
            value: widget.progressValue,
          ),
        ),
        Positioned(
          child: Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Text(
              '${(widget.progressValue!).round()}%',
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          left: 30.w,
        )
      ],
    );
  }
}
