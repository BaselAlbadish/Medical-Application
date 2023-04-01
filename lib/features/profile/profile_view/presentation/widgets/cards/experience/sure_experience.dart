import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/responsive_logic/logic.dart';

import '../../../../../../../core/presentation/core_constants.dart';
import '../../../constants.dart';

class SureExperience extends StatelessWidget {
  const SureExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
        child : Container(
          height: getScreenHeight(context) / 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: getScreenWidth(context),
                child: Center(
                  child: Text(
                    'Sure you wanna delete',
                    style: TextStyle(fontSize: 25.sp, color: Colors.red,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  height: alertButtonHeight.h,
                  width: alertButtonWidth.w / 2,
                  decoration: const BoxDecoration(
                    color: KNewBlue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(60.0),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context, false);
                    },
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: alertButtonHeight.h,
                  width: alertButtonWidth.w / 2,
                  decoration: const BoxDecoration(
                    color: KNewBlue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(60.0),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    ),
                  ),
                )
              ],),

            ],
          ),
        ));
  }
}
