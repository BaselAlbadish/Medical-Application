import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/widgets/cards/course/courses_more.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/themes/light_theme.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../../../blocs/Courses/courses_bloc.dart';
import '../../../constants.dart';
import 'alertdialog_cources.dart';
import '../../my_text.dart';
import 'course_item.dart';

class CardCourses extends StatelessWidget {
  const CardCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CoursesBloc>(),
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
                      text: 'Courses',
                      fontSize: cardTitleSize.sp,
                      fontWeight: FontWeight.bold,
                      color: KMediumBlue,
                    ),
                    BlocBuilder<CoursesBloc, CoursesState>(
                      builder: (context, state) {
                        return TextButton(
                          onPressed: () async {
                            CoursesBloc _bloc = context.read<CoursesBloc>();
                            await showDialog(
                              barrierDismissible: false,
                              builder: (_) => BlocProvider.value(
                                value: _bloc,
                                child: DialogCourse(editingType: 'add'),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BlocBuilder<CoursesBloc, CoursesState>(
                      builder: (context, state) {
                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.courses.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: CourseItem(
                                index: index,
                                course: state.courses[index],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 250.w),
                  child: BlocBuilder<CoursesBloc, CoursesState>(
                    builder: (context, state) {
                      return TextButton(
                          onPressed: () {
                            CoursesBloc _bloc = context.read<CoursesBloc>();
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              Theme(
                                data: customLightTheme(),
                                child: BlocProvider.value(
                                  value: _bloc,
                                  child: CoursesMore(
                                    list: state.courses,
                                  ),
                                ),
                              );
                              return BlocProvider.value(
                                value: _bloc,
                                child: CoursesMore(
                                  list: state.courses,
                                ),
                              );
                            }));
                          },
                          child: MyText(
                            text: 'more',
                            fontSize: cardMoreSize.sp,
                            color: KMediumBlue,
                            fontWeight: FontWeight.bold,
                          ));
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
