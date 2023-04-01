import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/core_constants.dart';
import 'package:mdcin_ca/core/presentation/responsive_logic/logic.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';
import '../../../../../../../core/network/general_constants.dart';
import '../../../constants.dart';
import '../../my_text.dart';

class SummaryMore extends StatelessWidget {
  SummaryMore({required this.summary, required this.store, Key? key}) : super(key: key);
  ProfileStore store;
  String summary;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(left: 40.w, right: 40.w, top: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRect(
              child: Align(
                heightFactor: 1,
                child: store.individualProfile!.profileImageName != null
                    ? CircleAvatar(
                        backgroundImage: NetworkImage(
                          "$SERVER_MAIN_URI/image/${store.individualProfile!.profileImageName}",
                        ),
                        radius: 100.w,
                      )
                    : CircleAvatar(radius: 100.w, backgroundImage: const AssetImage("assets/images/default_image.png")),
              ),
            ),
            const Spacer(flex: 2),
            Container(
              width: getScreenWidth(context),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: MyText(text: summary, fontSize: 14.sp),
              ),
            ),
            const Spacer(flex: 2),
            Padding(
              padding: EdgeInsets.only(bottom: 30.h, top: 20.h),
              child: Center(
                child: Container(
                  height: alertButtonHeight.h,
                  width: alertButtonWidth.w,
                  decoration: const BoxDecoration(
                    color: KNewBlue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text(
                        "Done",
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      )),
    );
  }
}
