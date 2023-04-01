import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mdcin_ca/core/presentation/responsive_logic/logic.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../../../blocs/Courses/courses_bloc.dart';
import '../../my_text.dart';
import '../experience/sure_experience.dart';
import 'alertdialog_cources.dart';

class CourseItem extends StatelessWidget {
  CourseItem({required this.index, required this.course, Key? key}) : super(key: key);
  Course course;
  int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    backgroundImage: const AssetImage("assets/images/md.png"),
                    radius: 20.w,
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: course.courseName ?? "",
                        fontSize: 14.sp,
                        color: KMediumBlue,
                      ),
                      SizedBox(height: 5.w),
                      SizedBox(
                        width: getScreenWidth(context) * (3 / 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(text: course.TeacherName ?? "", color: KNewBlue, fontSize: 11.sp),
                            Builder(builder: (context) {
                              String startDate =
                                  "${course.startDate?.day ?? "--"}/${course.startDate?.month ?? "--"}/${course
                                  .startDate?.year ?? "----"}";
                              String endDate =
                                  "${course.endDate?.day ?? "--"}/${course.endDate?.month ?? "--"}/${course.endDate
                                  ?.year ?? "----"}";
                              return MyText(text: "$startDate  ||  $endDate", fontSize: 10.sp);
                            }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              BlocBuilder<CoursesBloc, CoursesState>(
                builder: (context, state) {
                  return GestureDetector(
                      onTap: () async {
                        bool sure = await showDialog(
                          barrierDismissible: false,
                          builder: (context) => const SureExperience(),
                          context: context,
                        );
                        if (sure) {
                          context.read<CoursesBloc>().add(DeleteEvent(state.courses[index]));
                        }
                      },
                      child: Icon(Icons.delete, color: KLightBlue, size: 22.w));
                },
              ),
              SizedBox(width: 10.w),
              BlocBuilder<CoursesBloc, CoursesState>(
                builder: (context, state) {
                  return GestureDetector(
                      onTap: () async {
                        context.read<CoursesBloc>().add(EditEvent(state.courses[index]));
                        CoursesBloc _bloc = context.read<CoursesBloc>();
                        await showDialog(
                          barrierDismissible: false,
                          builder: (_) =>
                              BlocProvider.value(
                                value: _bloc,
                                child: DialogCourse(editingType: "update"),
                              ),
                          context: context,
                        );
                      },
                      child: Icon(Icons.edit, color: KLightBlue, size: 22.w));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
