import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../configure_di.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/presentation/responsive_logic/logic.dart';
import '../../../../../../auth/signup/domain/entities/individual/individual_model.dart';
import '../../../../../../auth/signup/presentation/widgets/core/custom_dropdown.dart';
import '../../../../../../auth/signup/presentation/widgets/core/custom_typeahead.dart';
import '../../../../../core/presintation/widgets/dropdown_widget.dart';
import '../../../../../core/presintation/widgets/shadow_text_field.dart';
import '../../../../../core/presintation/widgets/type_ahead.dart';
import '../../../../../core/utility/profile_store.dart';
import '../../../blocs/Courses/courses_bloc.dart';
import '../../../constants.dart';
import '../../my_text.dart';

class DialogCourse extends StatelessWidget {
  DialogCourse({required this.editingType, Key? key}) : super(key: key);

  String editingType;

  @override
  Widget build(BuildContext context) {
    String startMonth = "";
    String startYear = "";
    String endMonth = "";
    String endYear = "";


    TextEditingController locationController = TextEditingController();
    TextEditingController teacherController = TextEditingController();
    TextEditingController organizationController = TextEditingController();

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
      child: SizedBox(
        height: getScreenHeight(context) - 150.h,
        width: getScreenWidth(context),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h, top: 20.h),
                  child: Center(
                    child: Text(
                      'Course',
                      style: TextStyle(color: KMediumBlue, fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                BlocBuilder<CoursesBloc, CoursesState>(
                  builder: (context, state) {
                    return ShadowTextField(
                        initValue: state.course.courseName,
                        hintText: 'type your course name',
                        title: 'Course',
                        fontSizeForHintText: 14.sp,
                        errorLabel: state.courseErrorMessage,
                        fontSizeForTitle: 16.sp,
                        width: getScreenWidth(context),
                        height: 38.h,
                        onChange: (name) {
                          context.read<CoursesBloc>().add(EditCourseName(name));
                        });
                  },
                ),
                BlocBuilder<CoursesBloc, CoursesState>(
                  builder: (context, state) {
                    teacherController.text = state.course.TeacherName ?? "";
                    return CustomTypeAhead<Teacher>(
                      label: 'Teacher name',
                      optionsBuilder: (context, item) {
                        return ListTile(
                          title: Text(item.name),
                        );
                      },
                      errorText: state.teacherErrorMessage,
                      controller: teacherController,
                      context: context,
                      hintText: 'type your teacher name',
                      suggestionsCallback: (String pattern) async {
                        final result = await context.read<CoursesBloc>().getTeachersSuggestions(pattern);
                        return result;
                      },
                      onSelected: (object) {
                        teacherController.text = object.name;
                        context.read<CoursesBloc>().add(EditTeacherName(object.name));
                      },
                    );
                  },
                ),
                BlocBuilder<CoursesBloc, CoursesState>(
                  builder: (context, state) {
                    organizationController.text = state.course.organization ?? "";
                    return CustomTypeAhead<Company>(
                      label: 'Organization',
                      optionsBuilder: (context, item) {
                        return ListTile(
                          title: Text(item.name),
                        );
                      },
                      errorText: state.organizationErrorMessage,
                      controller: organizationController,
                      context: context,
                      hintText: 'type your organization name',
                      suggestionsCallback: (String pattern) async {
                        final result = await context.read<CoursesBloc>().getOrganizationSuggestions(pattern);
                        return result;
                      },
                      onSelected: (object) {
                        organizationController.text = object.name;
                        context.read<CoursesBloc>().add(EditOrganizationName(object.name));
                      },
                    );
                  },
                ),
                BlocBuilder<CoursesBloc, CoursesState>(
                  builder: (context, state) {
                    locationController.text = state.course.location?.country.name ?? "";
                    return CustomTypeAhead<Location>(
                      label: 'Location',
                      optionsBuilder: (context, item) {
                        return ListTile(
                          title: Text(item.country.name),
                        );
                      },
                      errorText: state.locationErrorMessage,
                      controller: locationController,
                      context: context,
                      hintText: 'type your location',
                      suggestionsCallback: (String pattern) async {
                        final result = await context.read<CoursesBloc>().getLocationSuggestions(pattern);
                        return result;
                      },
                      onSelected: (object) {
                        locationController.text = object.country.name;
                        context.read<CoursesBloc>().add(EditLocation(object));
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 5.h),
                  child: MyText(
                    text: 'Start Date',
                    fontSize: 16.sp,
                    color: KMediumBlue,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocBuilder<CoursesBloc, CoursesState>(
                      builder: (context, state) {
                        startMonth = state.course.startDate?.month ?? "";
                        return CustomDropDown<String>(
                          context,
                          isEnabled: true,
                          callBack: (value) {
                            startMonth = value.toString();
                          },
                          items: getIt<ProfileStore>().getMonths(),
                          label: startMonth,
                        );
                      },
                    ),
                    BlocBuilder<CoursesBloc, CoursesState>(
                      builder: (context, state) {
                        startYear = state.course.startDate?.month ?? "";
                        return CustomDropDown<String>(
                          context,
                          isEnabled: true,
                          callBack: (value) {
                            startYear = value.toString();
                          },
                          items: getIt<ProfileStore>().getYears(),
                          label: startYear,
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 5.h),
                  child: MyText(
                    text: 'End Date',
                    fontSize: 16.sp,
                    color: KMediumBlue,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocBuilder<CoursesBloc, CoursesState>(
                      builder: (context, state) {
                        endMonth = state.course.startDate?.month ?? "";
                        return CustomDropDown<String>(
                          context,
                          isEnabled: true,
                          callBack: (value) {
                            endMonth = value.toString();
                          },
                          items: getIt<ProfileStore>().getMonths(),
                          label: endMonth,
                        );
                      },
                    ),
                    BlocBuilder<CoursesBloc, CoursesState>(
                      builder: (context, state) {
                        endYear = state.course.startDate?.month ?? "";
                        return CustomDropDown<String>(
                          context,
                          isEnabled: true,
                          callBack: (value) {
                            endYear = value.toString();
                          },
                          items: getIt<ProfileStore>().getYears(),
                          label: endYear,
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.h, top: 20.h),
                  child: Center(
                    child: Container(
                        height: alertButtonHeight.h,
                        width: alertButtonWidth.w,
                        decoration: const BoxDecoration(
                          color: KNewBlue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
                        child: BlocBuilder<CoursesBloc, CoursesState>(
                          builder: (context, state) {
                            bool valid = context.read<CoursesBloc>().isValid(state);
                            return RaisedButton(
                              onPressed: valid
                                  ? () {
                                if (editingType == "add") {
                                  context.read<CoursesBloc>().add(const AddEvent());
                                } else {
                                  context.read<CoursesBloc>().add(const UpdateEvent());
                                }
                                Navigator.pop(context);
                              }
                                  : null,
                              disabledColor: const Color(0xff697A84),
                              disabledElevation: 1,
                              disabledTextColor: Colors.white,
                              child: Center(
                                child: Text(
                                  editingType == "add" ? "Add" : "Update",
                                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                                ),
                              ),
                            );
                          },
                        ),
                    ),
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
