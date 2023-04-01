import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/network/general_constants.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/presentation/responsive_logic/logic.dart';
import '../../../../../core/utility/profile_store.dart';
import '../../../blocs/Basic_Info/basic_info_bloc.dart';
import '../../../blocs/images/images_bloc.dart';
import '../../../constants.dart';
import '../../image_alerts/alertdialog_image.dart';
import '../../image_alerts/alertdialog_image_choice.dart';
import 'alertdialog_basic_info.dart';
import '../../my_text.dart';

class CardBasicInfo extends StatelessWidget {
  IndividualProfile profile;
  Color levelColor;

  CardBasicInfo({required this.levelColor, required this.profile, Key? key}) : super(key: key);

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
              offset: const Offset(0, 5), // changes position of shadow
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
                    text: 'Basic Info',
                    fontSize: cardTitleSize.sp,
                    fontWeight: FontWeight.bold,
                    color: KMediumBlue,
                  ),
                  BlocBuilder<BasicInfoBloc, BasicInfoState>(
                    builder: (context, state) {
                      return TextButton(
                        onPressed: () async {
                          BasicInfoBloc _bloc = context.read<BasicInfoBloc>();
                          await showDialog(
                            barrierDismissible: false,
                            builder: (_) =>
                                BlocProvider.value(
                                  value: _bloc,
                                  child: BasicInfoDialog(context: context),
                                ),
                            context: context,
                          );
                        },
                        child: MyText(
                          text: 'Update',
                          fontSize: cardUpdateSize.sp,
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Stack(children: [
                    InkWell(
                      child: BlocBuilder<ImagesBloc, ImagesState>(
                        builder: (context, state) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: levelColor,
                                width: 1.5.w,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(60)),
                            ),
                            child: state.newProfileImage != null
                                ? CircleAvatar(
                                    radius: 50.w,
                                    backgroundImage: FileImage(
                                      File(state.newProfileImage!.path),
                                    ),
                                  )
                                : state.profileImage == ""
                                    ? CircleAvatar(
                                        backgroundImage: const AssetImage("assets/images/default_image.png"),
                                        radius: 50.w,
                                      )
                                    : CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          "$SERVER_MAIN_URI/image/${state.profileImage}",
                                        ),
                                        radius: 50.w,
                                      ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 4,
                      left: 4,
                      child: BlocBuilder<ImagesBloc, ImagesState>(
                        builder: (context, state) {
                          return InkWell(
                            child: Image.asset(
                              'assets/images/camera.png',
                              width: 22.w,
                              height: 22.h,
                              color: levelColor,
                            ),
                            onTap: () async {
                              if (state.profileImage == "" && state.newProfileImage == null) {
                                ImagesState state = await showDialog(
                                  barrierDismissible: false,
                                  builder: (context) => ImageDialogChoice(isProfile: true),
                                  context: context,
                                );
                                context.read<ImagesBloc>().add(UpdateState(state));
                              } else {
                                ImagesState state = await showDialog(
                                  barrierDismissible: false,
                                  builder: (context) => DialogImage(isProfile: true),
                                  context: context,
                                );
                                context.read<ImagesBloc>().add(UpdateState(state));
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ]),
                  SizedBox(width: 25.w),
                  Expanded(
                    child: Table(
                      textDirection: TextDirection.ltr,
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                            child: MyText(
                              text: 'Full Name',
                              fontSize: 14.sp,
                              color: KMediumBlue,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                            child: BlocBuilder<BasicInfoBloc, BasicInfoState>(
                              builder: (context, state) {
                                return MyText(
                                  text: state.basicInfo.firstName! + " " + state.basicInfo.lastName!,
                                  fontSize: 12.sp,
                                  color: KMediumBlue,
                                );
                              },
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                            child: MyText(
                              text: 'Birthday',
                              fontSize: 14.sp,
                              color: KMediumBlue,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                            child: BlocBuilder<BasicInfoBloc, BasicInfoState>(
                              builder: (context, state) {
                                return MyText(
                                  text: context.read<BasicInfoBloc>().getFormattedData(),
                                  fontSize: 12.sp,
                                  color: KMediumBlue,
                                );
                              },
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                            child: MyText(
                              text: 'Gender',
                              fontSize: 14.sp,
                              color: KMediumBlue,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                            child: BlocBuilder<BasicInfoBloc, BasicInfoState>(
                              builder: (context, state) {
                                return MyText(
                                  text: state.basicInfo.gender ?? "- - - - - - - -",
                                  fontSize: 12.sp,
                                  color: KMediumBlue,
                                );
                              },
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                            child: MyText(
                              text: 'location',
                              fontSize: 14.sp,
                              color: KMediumBlue,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                            child: BlocBuilder<BasicInfoBloc, BasicInfoState>(
                              builder: (context, state) {
                                return MyText(
                                  text: state.basicInfo.primaryLocation?.country.name ?? "------",
                                  fontSize: 12.sp,
                                  color: KMediumBlue,
                                );
                              },
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                            child: MyText(
                              text: 'profession',
                              fontSize: 14.sp,
                              color: KMediumBlue,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: tablePaddingValue),
                            child: BlocBuilder<BasicInfoBloc, BasicInfoState>(
                              builder: (context, state) {
                                return MyText(
                                  text: state.basicInfo.primaryProfession?.name ?? "------",
                                  fontSize: 12.sp,
                                  color: KMediumBlue,
                                );
                              },
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 250.w),
                child: TextButton(
                    onPressed: () {
                      //TODO......................////
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
