import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/blocs/Experience/experience_bloc.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/themes/light_theme.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../../../constants.dart';
import 'alertdialog_experience.dart';
import '../../my_text.dart';
import 'experience_item.dart';
import 'experience_more.dart';

class CardExperience extends StatelessWidget {
  CardExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExperienceBloc>(),
      child: Padding(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Experience',
                      fontSize: cardTitleSize.sp,
                      fontWeight: FontWeight.bold,
                      color: KMediumBlue,
                    ),
                    BlocBuilder<ExperienceBloc, ExperienceState>(
                      builder: (context, state) {
                        return TextButton(
                          onPressed: () async {
                            ExperienceBloc _bloc = context.read<ExperienceBloc>();
                            await showDialog(
                              barrierDismissible: false,
                              builder: (_) => BlocProvider.value(
                                value: _bloc,
                                child: DialogExperience(editType: "add"),
                              ),
                              context: context,
                            );
                          },
                          child: MyText(
                            text: 'Add',
                            fontSize: cardUpdateSize.sp,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                BlocBuilder<ExperienceBloc, ExperienceState>(
                  builder: (context, state) {
                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.experiences.isEmpty
                          ? 0
                          : state.experiences.length >= 2
                              ? 2
                              : 1,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: ExperienceItem(
                            index: index,
                            employeeType: state.experiences[index].employeeType ?? "",
                            profession: state.experiences[index].positionName ?? "",
                            pickedImage: 'assets/images/md.png',
                            date:
                                '${state.experiences[index].startDate?.year ?? ""} - ${state.experiences[index].endDate?.year ?? ""}',
                            companyName: state.experiences[index].companyName ?? "",
                          ),
                        );
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 250.w),
                  child: BlocBuilder<ExperienceBloc, ExperienceState>(
                    builder: (context, state) {
                      return TextButton(
                        onPressed: () {
                          ExperienceBloc _bloc = context.read<ExperienceBloc>();
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            Theme(
                              data: customLightTheme(),
                              child: BlocProvider.value(
                                value: _bloc,
                                child: ExperienceMore(
                                  list: state.experiences,
                                ),
                              ),
                            );
                            return BlocProvider.value(
                              value: _bloc,
                              child: ExperienceMore(
                                list: state.experiences,
                              ),
                            );
                          }));
                        },
                        child: MyText(
                          text: 'more',
                          fontSize: cardMoreSize.sp,
                          color: KMediumBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
