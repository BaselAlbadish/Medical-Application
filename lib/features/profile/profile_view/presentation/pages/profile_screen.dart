import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/presentation/responsive_logic/logic.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/pages/cards_builder.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/widgets/profile_fields.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/errors_handle_function/errors_handle.dart';
import '../../../../../core/presentation/core_constants.dart';
import '../../../core/presintation/widgets/profile_interface.dart';
import '../../../core/presintation/widgets/shadow_text_field.dart';
import '../../../core/presintation/widgets/drawer.dart';
import '../../domain/repositories/init_infornation_repository.dart';
import '../blocs/Basic_Info/basic_info_bloc.dart';
import '../blocs/images/images_bloc.dart';
import '../widgets/group_follow.dart';
import '../widgets/my_text.dart';
import '../widgets/post.dart';
import '../widgets/profile_follow.dart';
import 'package:dartz/dartz.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = getIt<ProfileStore>();

    List<Widget> connectionsList = [
      ProfileFollow(
          levelColor: Colors.yellow, name: 'basel albadish', job: 'surgeon', textButtonTitle: 'Remove Connection'),
    ];
    List<Widget> followersList = [
      ProfileFollow(levelColor: Colors.greenAccent, name: 'Mars Naert', job: 'surgion', textButtonTitle: 'UnFollow'),
    ];

    List<Widget> groupsList = [
      GroupFollow(
        numberOfMembers: 1850,
        levelColor: Colors.amber,
        groupName: "Problems 1",
      ),
    ];
    List<Widget> postsList = [
      Post(
        name: 'Mars Naert',
        job: 'Surgeon',
        date: '3 mins',
        post: 'this is a medical post',
        imagePostPath: 'assets/images/Group1.png',
      ),
    ];

    return SafeArea(
      child: FutureBuilder(
        future: getIt<FillDataRepository>().getIndividualInformation(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data as Either;
            if (data.isRight()) {
              final value = data.getOrElse(() => null);
              getIt<ProfileStore>().setProfileInfo(value);
              store.individualProfile = value;
              return MultiBlocProvider(
                providers: [
                  BlocProvider<ImagesBloc>(
                    create: (context) => getIt<ImagesBloc>(),
                  ),
                  BlocProvider<BasicInfoBloc>(
                    create: (context) => getIt<BasicInfoBloc>(),
                  ),
                ],
                child: DefaultTabController(
                  length: 6,
                  child: Scaffold(
                    drawer: Drawer(
                      backgroundColor: Colors.white,
                      child: DrawerWidget(levelColor: Colors.blue),
                    ),
                    backgroundColor: Colors.white,
                    body: SingleChildScrollView(
                      child: Column(
                        children: [
                          ProfileInterface(
                            levelColor: Colors.blue,
                          ),
                          BlocBuilder<BasicInfoBloc, BasicInfoState>(
                            builder: (context, state) {
                              return MyText(
                                text:
                                "${state.basicInfo.firstName} ${state.basicInfo.lastName}",
                                color: Colors.black,
                                fontSize: 25.sp,
                              );
                            },
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          BlocBuilder<BasicInfoBloc, BasicInfoState>(
                            builder: (context, state) {
                              return MyText(
                                text: state.basicInfo.primaryProfession!.name,
                                color: KNewBlue,
                                fontSize: 17.sp,
                              );
                            },
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MyText(
                            text: 'you should update your profile to move to the next level',
                            color: KGrey,
                            fontSize: 12.sp,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          MyText(
                            text: 'Overview of your profile',
                            fontSize: 18.sp,
                            color: KMediumBlue,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          SizedBox(
                            width: getScreenWidth(context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    MyText(
                                      text: 'You have',
                                      fontSize: 10.sp,
                                      color: KDarkBlue,
                                    ),
                                    MyText(
                                      text: ' 1500 connections',
                                      fontSize: 10.sp,
                                      color: KNewBlue,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    MyText(
                                      text: 'You have',
                                      fontSize: 10.sp,
                                      color: KDarkBlue,
                                    ),
                                    MyText(
                                      text: ' 340 Followers',
                                      fontSize: 10.sp,
                                      color: KNewBlue,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    MyText(
                                      text: 'You have',
                                      fontSize: 10.sp,
                                      color: KDarkBlue,
                                    ),
                                    MyText(
                                      text: ' 1500 Groups',
                                      fontSize: 10.sp,
                                      color: KNewBlue,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //ProfileFields(),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: SizedBox(
                              height: 20.h,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: TabBar(
                                  indicatorColor: KNewBlue,
                                  isScrollable: true,
                                  tabs: [
                                    Tab(
                                      child: MyText(
                                        text: 'Your information',
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                    Tab(
                                      child: MyText(
                                        text: 'Connections',
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                    Tab(
                                      child: MyText(
                                        text: 'Followers',
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                    Tab(
                                      child: MyText(
                                        text: 'Groups',
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                    Tab(
                                      child: MyText(
                                        text: 'Invite',
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                    Tab(
                                      child: MyText(
                                        text: 'Posts',
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            //TODO ASK *_*
                            height: 2100,
                            child: TabBarView(
                              children: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: getCards(store).length,
                                  itemBuilder: (context, index) => getCards(store)[index],
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: connectionsList.length,
                                  itemBuilder: (context, index) => connectionsList[index],
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: followersList.length,
                                  itemBuilder: (context, index) => followersList[index],
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: groupsList.length,
                                  itemBuilder: (context, index) => groupsList[index],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 40.h, left: 15.w),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          ShadowTextField(
                                              width: getScreenWidth(context) - 80,
                                              height: 38.h,
                                              hintText: 'Enter your friend email',
                                              title: 'Invite people you may know',
                                              fontSizeForHintText: 14,
                                              errorLabel: "",
                                              fontSizeForTitle: 20,
                                              onChange: (value) {
                                                //TODO
                                              }),
                                          IconButton(
                                            icon: Icon(
                                              Icons.add,
                                              size: 30.w,
                                            ),
                                            onPressed: () {
                                              //TODO
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Container(
                                      height: 40.h,
                                      width: 150.w,
                                      decoration: const BoxDecoration(
                                        color: KNewBlue,
                                        borderRadius: BorderRadius.all(Radius.circular(25)),
                                      ),
                                      child: TextButton(
                                        child: MyText(
                                          text: 'Done',
                                          fontSize: 20.sp,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          //TODO Ghazal
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: postsList.length,
                                  itemBuilder: (context, index) => postsList[index],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else {
              Failure? failure = data.getOrElse(() => null);
              return handleError(context, failure);
            }
          } else {
            return Dialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
                child: Container(
                    color: Colors.white,
                    height: getScreenHeight(context) / 20,
                    width: getScreenWidth(context) / 2,
                    child: const LinearProgressIndicator()));
          }
        },
      ),
    );
  }
}
