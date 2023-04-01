import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/features/profile/core/token/token_repository.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';
import '../../../../../core/network/general_constants.dart';
import '../../../../../core/presentation/core_constants.dart';
import '../../../../../core/presentation/screens/welcoming_screen.dart';
import '../../../profile_view/presentation/blocs/Basic_Info/basic_info_bloc.dart';
import '../../../profile_view/presentation/blocs/images/images_bloc.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({required this.levelColor, Key? key}) : super(key: key);
  Color levelColor;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(right: 15.w, top: 40.h),
      children: <Widget>[
        Row(
          children: [
            BlocBuilder<ImagesBloc, ImagesState>(
              builder: (context, state) {
                return Container(
                  margin: EdgeInsets.only(left: 10.w, right: 10.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: levelColor,
                      width: 1.5.w,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                  ),
                  child: state.newProfileImage != null
                      ? CircleAvatar(
                    radius: 40.w,
                    backgroundImage: FileImage(
                      File(state.newProfileImage!.path),
                    ),
                  )
                      : state.profileImage == ""
                      ? CircleAvatar(
                    backgroundImage: const AssetImage("assets/images/default_image.png"),
                    radius: 40.w,
                  )
                      : CircleAvatar(
                    backgroundImage: NetworkImage(
                      "$SERVER_MAIN_URI/image/${state.profileImage}",
                    ),
                    radius: 40.w,
                  ),
                );
              },
            ),
            SizedBox(
              width: 10.w,
            ),
            BlocBuilder<BasicInfoBloc, BasicInfoState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${state.basicInfo.firstName} ${state.basicInfo.lastName}",
                      style: TextStyle(fontSize: 25.sp),
                    ),
                    SizedBox(
                      height: 7.w,
                    ),
                    Text(
                      state.basicInfo.primaryProfession!.name,
                      style: TextStyle(fontSize: 18.sp, color: KNewBlue),
                    ),
                  ],
                );
              },
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Divider(
          indent: 2.w,
          thickness: 2,
        ),
        SizedBox(
          height: 20.h,
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            size: 30.sp,
            color: Colors.black,
          ),
          title: Text("Control Center", style: TextStyle(color: Colors.black, fontSize: 16.sp)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 30.sp,
            color: Colors.black,
          ),
          title: Text("Settings", style: TextStyle(color: Colors.black, fontSize: 16.sp)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.help,
            size: 30.sp,
            color: Colors.black,
          ),
          title: Text("Help!", style: TextStyle(color: Colors.black, fontSize: 16.sp)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.follow_the_signs_outlined,
            size: 30.sp,
            color: Colors.black,
          ),
          title: Text("Logout", style: TextStyle(color: Colors.black, fontSize: 16.sp)),
          onTap: () {
            getIt<TokenRepository>().setToken("");
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomingScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
