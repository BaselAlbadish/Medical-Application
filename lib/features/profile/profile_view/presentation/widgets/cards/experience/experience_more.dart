import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../../../constants.dart';
import 'experience_item.dart';

class ExperienceMore extends StatelessWidget {
  ExperienceMore({required this.list, Key? key}) : super(key: key);
  List<Experience> list;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              ListView.builder(
                // scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemCount: list.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: ExperienceItem(
                      index: index,
                      employeeType: list[index].employeeType ?? "",
                      profession: list[index].positionName ?? "",
                      pickedImage: 'assets/images/md.png',
                      date: '${list[index].startDate?.year ?? ""} - ${list[index].endDate?.year ?? ""}',
                      companyName: list[index].companyName ?? "",
                    ),
                  );
                },
              ),
              Center(
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
            ],
          ),
        ),
      ),
    );
  }
}
