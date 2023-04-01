import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/widgets/app_logo.dart';
import 'package:mdcin_ca/core/presentation/widgets/customText.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/cusom_button.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/custom_sizeBox.dart';

class IndividualFollow extends StatelessWidget {
  const IndividualFollow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              children: [
                const AppLogo(),
                CustomSizeBox(height: 41.8),
                CustomText(
                  text: "Please follow people and organization's",
                  alignment: Alignment.center,
                  color: kSecondaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                CustomSizeBox(height: 21),
                CustomText(
                  text: "Recommended individuals ",
                  alignment: Alignment.center,
                  color: kSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                CustomSizeBox(height: 30),
                CustomSizeBox(
                  height: 200,
                  widget: Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) => item(),
                      separatorBuilder: (BuildContext context, int index) =>
                          CustomSizeBox(width: 40),
                    ),
                  ),
                ),
                CustomText(
                  text: "Recommended Organizations",
                  alignment: Alignment.center,
                  color: kSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                CustomSizeBox(height: 30),
                CustomSizeBox(
                  height: 212,
                  widget: Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) => item(),
                      separatorBuilder: (BuildContext context, int index) =>
                          CustomSizeBox(width: 40),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Center(
                    child: CustomButton(
                      context: context,
                      text: 'Next',
                      isActive: true,
                    ),
                  ),
                  onTap: () {},
                ),
                CustomSizeBox(),
                InkWell(
                  child: CustomText(
                    text: "Skip",
                    alignment: Alignment.center,
                    fontSize: 18,
                    color: kAlternativeColor,
                  ),
                  onTap: () {
                    // navigateToRemove(
                    //   context: context,
                    //   Widget: ,
                    // );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget item() {
    return Column(
      children: [
        Container(
          width: 75.0.w,
          height: 75.0.h,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              width: 3,
              color: kSecondaryColor,
              style: BorderStyle.solid,
            ),
            image: const DecorationImage(
              image: NetworkImage(
                  "https://cdn1.vectorstock.com/i/1000x1000/28/95/medical-doctor-icon-vector-23402895.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        CustomText(
          text: "Mars Naert",
          fontSize: 17,
          color: kSecondaryColor,
          fontWeight: FontWeight.bold,
        ),
        CustomSizeBox(height: 9),
        CustomText(
          text: "Dentist",
          fontSize: 12,
          color: kPrimaryColor,
        ),
        CustomSizeBox(height: 14),
        Container(
          height: 32.h,
          width: 115.w,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300] as Color,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              const BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          child: GestureDetector(
            onTap: () {},
            child: CustomText(
              text: "Follow",
              color: kSecondaryColor,
              alignment: Alignment.center,
            ),
          ),
        ),
      ],
    );
  }
}
