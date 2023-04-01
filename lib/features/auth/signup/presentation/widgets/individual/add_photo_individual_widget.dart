import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/widgets/app_logo.dart';
import 'package:mdcin_ca/core/presentation/widgets/customText.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/cusom_button.dart';

class SignUpAddPhoto extends StatelessWidget {
  BuildContext context;
  SignUpAddPhoto(this.context) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const AppLogo(),
              const SizedBox(
                height: 41.8,
              ),
              CustomText(
                text: "Create a free Mdcin account",
                alignment: Alignment.center,
                color: kSecondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 7.h,
              ),
              CustomText(
                text: "Adding a photo helps people recognize you ",
                alignment: Alignment.center,
                color: kSecondaryColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 78.h,
              ),
              Stack(
                alignment: Alignment.topCenter,
                textDirection: TextDirection.rtl,
                fit: StackFit.loose,
                overflow: Overflow.visible,
                clipBehavior: Clip.hardEdge,
                children: [
                  Container(
                    height: 193.h,
                    width: 286.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80.h,
                        ),
                        CustomText(
                          text: "Layan Hadrous",
                          fontSize: 30,
                          color: kSecondaryColor,
                          fontWeight: FontWeight.w500,
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        CustomText(
                          text: "Human doctor",
                          color: kPrimaryColor,
                          fontSize: 18,
                          alignment: Alignment.center,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -40.0.h,
                    child: Container(
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
                      ),
                      child: Icon(Icons.add),
                    ),
                  ),
                  Positioned(
                    width: 270.w,
                    bottom: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Icon(Icons.edit, color: kSecondaryColor),
                            CustomText(text: "Edit", color: kSecondaryColor),
                          ],
                        ),
                        Column(
                          children: [
                            const Icon(Icons.delete, color: kSecondaryColor),
                            CustomText(text: "Delete", color: kSecondaryColor),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 73.h,
              ),
              GestureDetector(
                onTap: () {
                  // context.read<SignUpBloc>().add(const SignUpEvent.nextIsTapped());
                },
                child: Center(
                  child: CustomButton(
                    context: context, text: 'Next', isActive: true,
                    // context.read<WorkBloc>().state.componentIsValid
                  ),
                ),
              ),
              SizedBox(
                height: 9.2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Already have an account ? ",
                  ),
                  InkWell(
                    child: CustomText(text: "Sign in"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
