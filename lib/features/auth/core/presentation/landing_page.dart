import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/responsive_logic/logic.dart';
import 'package:mdcin_ca/core/presentation/routes/routes.dart';
import 'package:mdcin_ca/features/auth/signin/presentation/pages/signin_page.dart';
import '../../../../core/presentation/core_constants.dart';
import '../../../../core/presentation/widgets/app_logo.dart';
import '../../../../core/themes/light_theme.dart';
import '../../signup/presentation/pages/signup_page.dart';
import 'widgets/image_card.dart';
import 'widgets/indicator.dart';
import '../constants.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

int carouselIndex = 0;
var persistedAccountsEncoded = List.empty();

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
              if (orientation == Orientation.portrait) {
                return Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  child: SizedBox(
                    height: getScreenHeight(context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const AppLogo(),
                        SizedBox(height: 30.h),
                        CarouselSlider.builder(
                          itemCount: images.length,
                          itemBuilder: (context, index, realIndex) {
                            return ImageCard(index: index);
                          },
                          options: CarouselOptions(
                              height: 250.h,
                              viewportFraction: 1,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              enlargeStrategy: CenterPageEnlargeStrategy.height,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  carouselIndex = index;
                                });
                              }),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Indicator(carouselIndex: carouselIndex),
                        const Spacer(),
                        Container(
                          height: 40.h,
                          width: 251.w,
                          decoration: const BoxDecoration(
                            color: KNewBlue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                Theme(
                                  data: customLightTheme(),
                                  child: const SignUpPage(),
                                );
                                return const SignUpPage();
                              }));
                            },
                            child: Center(
                              child: Text(
                                "Join Now",
                                style: TextStyle(
                                    fontSize: 18.sp, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          height: 40.h,
                          width: 251.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: KNewBlue,
                              width: 2,
                            ),
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              navigateTo(
                                context: context,
                                Widget: SignInPage(),
                              );
                            },
                            child: Center(
                              child: Text(
                                "Sign in",
                                style:
                                    TextStyle(fontSize: 18.sp, color: KNewBlue),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(flex: 2)
                      ],
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding: EdgeInsets.only(left: 70.w, right: 70.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const AppLogo(),
                      Container(
                        height: 50.h,
                        width: 251.w,
                        decoration: const BoxDecoration(
                          color: KNewBlue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              Theme(
                                data: customLightTheme(),
                                child:const SignUpPage(),
                              );
                              return const SignUpPage();
                            }));
                          },
                          child: Center(
                            child: Text(
                              "Join Now",
                              style: TextStyle(
                                  fontSize: 25.sp, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.h,
                        width: 251.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: KNewBlue,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              "Sign in",
                              style:
                                  TextStyle(fontSize: 25.sp, color: KNewBlue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          );
        }),
      ),
    );
  }
}
