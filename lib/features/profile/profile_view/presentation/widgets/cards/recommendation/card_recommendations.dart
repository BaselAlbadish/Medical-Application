import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../constants.dart';
import '../../my_text.dart';
import 'recommendation_item.dart';

class CardRecommendations extends StatelessWidget {
  const CardRecommendations({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: 'Recommendations',
                fontSize: cardTitleSize.sp,
                fontWeight: FontWeight.bold,
                color: KMediumBlue,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Column(
                  children: [
                    RecommendationItem(imagePath: 'assets/images/recommend.png', recommendationTitle: 'Ask for recommendation'),
                    RecommendationItem(
                        imagePath: 'assets/images/recommend2.png', recommendationTitle: 'Give an recommendation'),
                    RecommendationItem(
                        imagePath: 'assets/images/recommend3.png', recommendationTitle: 'Show your recommendations'),
                  ],
                ),
              ),
             ],
          ),
        ),
      ),
    );
  }
}
