import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/utility/local_datasource/local_data_source.dart';
import 'package:mdcin_ca/features/auth/signin/data/datasources/local_datasource/constants.dart';
import '../../../configure_di.dart';
import '../../../features/auth/core/presentation/landing_page.dart';
import '../../../features/profile/core/token/token_repository.dart';
import '../../../features/profile/profile_view/presentation/pages/profile_screen.dart';
import '../core_constants.dart';
import '../responsive_logic/logic.dart';
import '../widgets/welcome_screen.dart';

class WelcomingScreen extends StatefulWidget {
  @override
  _WelcomingScreenState createState() => _WelcomingScreenState();
}

class _WelcomingScreenState extends State<WelcomingScreen> {
  var local = getIt.get<LocalDataSource>();

  Future<String> getToken() async {
    String token = "";
    if (local.containsKey(KEY_AUTH_TOKEN)) {
      token = await local.get(KEY_AUTH_TOKEN);
      print(token);
      return token;
    } else {
      print(token);
      return token;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WelcomeScreen(
      colors: const [
        Color(0xFF012236),
        Colors.lightBlue,
        Colors.lightBlue,
        Color(0xFF012236)
      ],
      text2: 'Mdcin',
      textStyle2: TextStyle(
        fontSize: 120.sp,
        color: const Color(0xFF11476C),
      ),
      textType2: TextType.colorizeAnimationText,
      speed: 80,
      pageRouteTransition: PageRouteTransition.slideTransition,
      navigateRoute: Builder(
        builder: (context) {
          //getIt<TokenRepository>().setToken("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NvdW50SWQiOjExNjksImVtYWlsIjoiYmFzZWxhbGJhZGlzaDEyMzQ1NkBnbWFpbC5jb20iLCJ1c2VybmFtZSI6IkJhc2VsICQiLCJwcm9maWxlSW1hZ2VOYW1lIjoiMTY1MDk2NTc4MDIwMi5qcGciLCJzdGF0dXMiOiJhY3RpdmUiLCJleHAiOjE2NTg3NDE3NTgsInVzZXJJZCI6MTE2OSwiaW5kaXZpZHVhbElkIjoyNSwiZnVsbE5hbWUiOiJiYXNlbCAkIiwicHJpbWFyeVByb2Zlc3Npb24iOiJTdHVkZW50IiwiaWF0IjoxNjUwOTY1NzU4fQ.F-isCMFvjx4TRTNhJ9keiHHwVMHdkLfHQQjUrgJrDAk");
          return FutureBuilder(
              future: getIt<TokenRepository>().getToken(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data != "") {
                    var payload = getIt<TokenRepository>().getPayload(snapshot.data as String);

                    if (DateTime.fromMillisecondsSinceEpoch(payload["exp"] * 1000).isAfter(DateTime.now())) {
                      return const ProfilePage();
                    } else {
                      return LandingPage();
                    }
                  } else {
                    return LandingPage();
                  }
                } else {
                  return const CircularProgressIndicator();
                }
              });
        }
      ),
      duration: 4000,
      text: 'The home of the global medical community',
      textType: TextType.typerAnimatedText,
      textStyle: TextStyle(
        fontSize: getScreenSize(context) * 7.378472222222222e-5,
        color: const Color(0xFF012236),
      ),
      backgroundColor: Colors.white,
    );
  }
}
),