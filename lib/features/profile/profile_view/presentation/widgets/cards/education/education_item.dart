import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/responsive_logic/logic.dart';

import '../../../../../../../core/presentation/core_constants.dart';
import '../../my_text.dart';

class EducationItem extends StatelessWidget {
  EducationItem(
      {required this.grade,required this.date, required this.profession, required this.university, required this.degree, Key? key})
      : super(key: key);
  String university;
  String date;
  String degree;
  String profession;
  String grade;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w,bottom: 3.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Row(
              children: [
                MyText(
                  text: '$university University',
                  fontSize: 14.sp,
                  color: KMediumBlue,
                ),
                SizedBox(
                  width: 15.w,
                ),
                MyText(text: date, fontSize: 13.sp)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 25.h,
                          width: getScreenWidth(context) / 1.7,
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
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 25.w, top: 7.h),
                            child: MyText(
                              text: '$degree Degree , $profession',
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: CircleAvatar(
                          backgroundColor: KMediumBlue,
                          radius: 15,
                          child: MyText(
                            text: grade,
                            fontSize: 10.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10.w),
                  GestureDetector(
                    onTap: (){
                      //TODO
                    },
                    child: Image.asset(
                      'assets/images/document.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                ],
              ),
              Row(
                children:  <Widget>[
                  GestureDetector(
                      onTap: (){
                        //TODO
                      },
                      child: Icon(Icons.delete,color: KLightBlue,size: 22.w)),
                  SizedBox(width:10.w),
                  GestureDetector(
                      onTap: (){
                        //TODO
                      },
                      child: Icon(Icons.edit,color: KLightBlue,size: 22.w)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
