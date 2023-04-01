import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../constants.dart';
import 'alertdialog_education.dart';
import '../../my_text.dart';
import 'education_item.dart';

class CardEducations extends StatelessWidget {
  const CardEducations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h,bottom: 5.h,left: 10.w,right: 10.w),
      child: Container(
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
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: 'Educations',
                    fontSize: cardTitleSize.sp,
                    fontWeight: FontWeight.bold,
                    color: KMediumBlue,
                  ),
                  TextButton(
                      onPressed: () {
                        showAlertDialogEducation(context);
                      },
                      child: MyText(
                        text: 'Update',
                        fontSize: cardUpdateSize.sp,
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  EducationItem(
                    degree: 'Bachelor\'s',
                    university: 'Harvard',
                    date: '2010 - 2015',
                    grade: '80%',
                    profession: 'Dental',
                  ),
                  EducationItem(
                    degree: 'Master\'s',
                    university: 'Oxford',
                    date: '2016 - 2020',
                    grade: '90%',
                    profession: 'IT',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 250.w),
                child: TextButton(
                    onPressed: () {
                      //TODO
                    },
                    child: MyText(
                      text: 'more',
                      fontSize: cardMoreSize.sp,
                      color: KMediumBlue,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
