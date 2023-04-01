import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/presentation/responsive_logic/logic.dart';
import '../../../../../core/presintation/widgets/dropdown_widget.dart';
import '../../../../../core/presintation/widgets/shadow_text_field.dart';
import '../../../../../core/presintation/widgets/type_ahead.dart';
import '../../../constants.dart';
import '../../my_text.dart';

void showAlertDialogEducation(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) setState) {
            return Dialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
              child: SizedBox(
                height: getScreenHeight(context) - 150.h,
                width: getScreenWidth(context),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w,right: 15.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                          child: Center(
                            child: Text(
                              'Education',
                              style: TextStyle(color: KMediumBlue, fontSize: 20.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        ShadowTextField(
                            hintText: '80',
                            title: 'Grade',
                            fontSizeForHintText: 14.sp,
                            errorLabel: '',
                            fontSizeForTitle: 16.sp,
                            width: getScreenWidth(context),
                            height: 38.h,
                            onChange: (value) {}),
                        TypeAhead(
                          title: 'University name',
                          titleColor: KMediumBlue,
                          fontSizeForTitle: 16.sp,
                          text: TextEditingController(),
                          items: [],
                          errorText: '',
                          hintText: 'Harvard',
                          width: getScreenWidth(context),
                          height: 38.h,
                          onChange: (val) {},
                        ),
                        TypeAhead(
                          title: 'Field of study',
                          titleColor: KMediumBlue,
                          fontSizeForTitle: 16.sp,
                          text: TextEditingController(),
                          items: [],
                          errorText: '',
                          hintText: 'Harvard',
                          width: getScreenWidth(context),
                          height: 38.h,
                          onChange: (val) {},
                        ),
                        TypeAhead(
                          title: 'Degree',
                          titleColor: KMediumBlue,
                          fontSizeForTitle: 16.sp,
                          text: TextEditingController(),
                          items: [],
                          errorText: '',
                          hintText: 'Harvard',
                          width: getScreenWidth(context),
                          height: 38.h,
                          onChange: (val) {},
                        ),
                        TypeAhead(
                          title: 'Major',
                          titleColor: KMediumBlue,
                          fontSizeForTitle: 16.sp,
                          text: TextEditingController(),
                          items: [],
                          errorText: '',
                          hintText: 'Harvard',
                          width: getScreenWidth(context),
                          height: 38.h,
                          onChange: (val) {},
                        ),
                        TypeAhead(
                          titleColor: KMediumBlue,
                          title: 'Minor',
                          fontSizeForTitle: 16.sp,
                          text: TextEditingController(),
                          items: [],
                          errorText: '',
                          hintText: 'Harvard',
                          width: getScreenWidth(context),
                          height: 38.h,
                          onChange: (val) {},
                        ),
                        MyText(
                          text: 'Start Date',
                          fontSize: 16.sp,
                          color: KMediumBlue,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropDown(onChange: (value) {}, items: [], dropDownValue: "value", text: ' Day'),
                            DropDown(onChange: (value) {}, items: [], dropDownValue: "value", text: ' Month'),
                          ],
                        ),
                        MyText(
                          text: 'End Date',
                          fontSize: 16.sp,
                          color: KMediumBlue,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropDown(onChange: (value) {}, items: [], dropDownValue: "value", text: ' Day'),
                            DropDown(onChange: (value) {}, items: [], dropDownValue: "value", text: ' Month'),
                          ],
                        ),
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
                                  //TODO
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Text(
                                    "Save",
                                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      });
}
