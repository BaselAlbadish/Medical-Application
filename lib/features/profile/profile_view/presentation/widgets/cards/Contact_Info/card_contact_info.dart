import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../../../constants.dart';
import '../../my_text.dart';

class CardContactInfo extends StatelessWidget {
  IndividualProfile profile;
  CardContactInfo({required this.profile, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h, bottom: 5.h, left: 10.w, right: 10.w),
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
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.w),
                child: MyText(
                  text: 'Contact Info',
                  fontSize: cardTitleSize.sp,
                  fontWeight: FontWeight.bold,
                  color: KMediumBlue,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w,top: 5.h,bottom: 10.h),
                child: Table(textDirection: TextDirection.ltr, children: [
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                      child: MyText(
                        text: 'Phone Number',
                        fontSize: 14.sp,
                        color: KDarkBlue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                      child: MyText(
                        text: profile.contactInfo.phoneNumber ?? "- - - - - - - - -",
                        fontSize: 12.sp,
                        color: KMediumBlue,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                      child: MyText(
                        text: 'mdcin email address',
                        fontSize: 14.sp,
                        color: KDarkBlue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                      child: MyText(
                        text: profile.contactInfo.email ?? "- - - - - - - - -",
                        fontSize: 12.sp,
                        color: KMediumBlue,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                      child: MyText(
                        text: 'Facebook Link',
                        fontSize: 14.sp,
                        color: KDarkBlue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                      child: MyText(
                        text: profile.contactInfo.facebook ?? "- - - - - - - - -",
                        fontSize: 12.sp,
                        color: KMediumBlue,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                      child: MyText(
                        text: 'LinkedIn Link',
                        fontSize: 14.sp,
                        color: KDarkBlue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                      child: MyText(
                        text: profile.contactInfo.linkedIn ?? "- - - - - - - - -",
                        fontSize: 12.sp,
                        color: KMediumBlue,
                      ),
                    ),
                  ]),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
