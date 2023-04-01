import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/configure_di.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/presentation/responsive_logic/logic.dart';
import '../../../../../../auth/signup/domain/entities/individual/individual_model.dart';
import '../../../../../../auth/signup/presentation/widgets/core/custom_dropdown.dart';
import '../../../../../../auth/signup/presentation/widgets/core/custom_typeahead.dart';
import '../../../../../core/utility/profile_store.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../../../blocs/Experience/experience_bloc.dart';
import '../../../constants.dart';
import '../../my_text.dart';

class DialogExperience extends StatelessWidget {
  DialogExperience({this.experience, required this.editType, Key? key}) : super(key: key);

  String editType;
  Experience? experience;

  @override
  Widget build(BuildContext context) {
    String startMonth = "";
    String startYear = "";
    String endMonth = "";
    String endYear = "";

    TextEditingController companyNameController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    TextEditingController positionController = TextEditingController();
    TextEditingController employeeTypeController = TextEditingController();

    if (editType == "update") {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
        child: SizedBox(
          height: getScreenHeight(context) - 150.h,
          width: getScreenWidth(context),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 15.h, right: 15.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h, top: 20.h),
                    child: Center(
                      child: Text(
                        'Experience',
                        style: TextStyle(color: KMediumBlue, fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  BlocBuilder<ExperienceBloc, ExperienceState>(
                    builder: (context, state) {
                      positionController.text = state.experience.positionName ?? "";
                      return CustomTypeAhead<Position>(
                        label: 'Position',
                        optionsBuilder: (context, item) {
                          return ListTile(
                            title: Text(item.name),
                          );
                        },
                        errorText: state.positionErrorMessage,
                        controller: positionController,
                        context: context,
                        hintText: 'type your position',
                        suggestionsCallback: (String pattern) async {
                          final result = await context.read<ExperienceBloc>().getPositionSuggestions(pattern);
                          return result;
                        },
                        onSelected: (object) {
                          positionController.text = object.name.toString();
                          context.read<ExperienceBloc>().add(EditPosition(object.name));
                        },
                      );
                    },
                  ),
                  BlocBuilder<ExperienceBloc, ExperienceState>(
                    builder: (context, state) {
                      companyNameController.text = state.experience.companyName ?? "";
                      return CustomTypeAhead<Company>(
                        label: 'Company Name',
                        optionsBuilder: (context, item) {
                          return ListTile(
                            title: Text(item.name),
                          );
                        },
                        errorText: state.companyNameErrorMessage,
                        controller: companyNameController,
                        context: context,
                        hintText: 'type your companyName',
                        suggestionsCallback: (String pattern) async {
                          final result = await context.read<ExperienceBloc>().getCompaniesSuggestions(pattern);
                          return result;
                        },
                        onSelected: (object) {
                          companyNameController.text = object.name.toString();
                          context.read<ExperienceBloc>().add(EditCompanyName(object.name));
                        },
                      );
                    },
                  ),
                  BlocBuilder<ExperienceBloc, ExperienceState>(
                    builder: (context, state) {
                      employeeTypeController.text = state.experience.employeeType ?? "";
                      return CustomTypeAhead<String>(
                        label: 'Employee Type',
                        optionsBuilder: (context, item) {
                          return ListTile(
                            title: Text(item),
                          );
                        },
                        errorText: state.typeErrorMessage,
                        controller: employeeTypeController,
                        context: context,
                        hintText: 'type your employee Type',
                        suggestionsCallback: (String pattern) async {
                          final result = await context.read<ExperienceBloc>().getEmployeeTypesSuggestions(pattern);
                          return result;
                        },
                        onSelected: (object) {
                          employeeTypeController.text = object.toString();
                          context.read<ExperienceBloc>().add(EditEmployeeType(object));
                        },
                      );
                    },
                  ),
                  BlocBuilder<ExperienceBloc, ExperienceState>(
                    builder: (context, state) {
                      locationController.text = state.experience.location?.country.name ?? "";
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
                          final result = await context.read<ExperienceBloc>().getLocationSuggestions(pattern);
                          return result;
                        },
                        onSelected: (object) {
                          locationController.text = object.country.name.toString();
                          context.read<ExperienceBloc>().add(EditLocation(object));
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
                      BlocBuilder<ExperienceBloc, ExperienceState>(
                        builder: (context, state) {
                          startMonth = state.experience.startDate?.month ?? "";
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
                      BlocBuilder<ExperienceBloc, ExperienceState>(
                        builder: (context, state) {
                          startYear = state.experience.startDate?.month ?? "";
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
                      BlocBuilder<ExperienceBloc, ExperienceState>(
                        builder: (context, state) {
                          endMonth = state.experience.startDate?.month ?? "";
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
                      BlocBuilder<ExperienceBloc, ExperienceState>(
                        builder: (context, state) {
                          endYear = state.experience.startDate?.month ?? "";
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
                            Radius.circular(60.0),
                          ),
                        ),
                        child: BlocBuilder<ExperienceBloc, ExperienceState>(
                          builder: (context, state) {
                            bool valid = context.read<ExperienceBloc>().isValid(state);
                            Date startDate = Date(day: "", month: startMonth, year: startYear);
                            Date endDate = Date(day: "", month: endMonth, year: endYear);
                            return RaisedButton(
                                    onPressed: valid
                                        ? () {
                                            context.read<ExperienceBloc>().add(EditStartDate(startDate));
                                            context.read<ExperienceBloc>().add(EditEndDate(endDate));
                                            context.read<ExperienceBloc>().add(const UpdateEvent());
                                            Navigator.pop(context);
                                          }
                                        : null,
                                    disabledColor: const Color(0xff697A84),
                                    disabledElevation: 1,
                                    disabledTextColor: Colors.white,
                                    child: Center(
                                      child: Text(
                                        "Update",
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
    } else {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
        child: SizedBox(
          height: getScreenHeight(context) - 150.h,
          width: getScreenWidth(context),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 15.h, right: 15.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h, top: 20.h),
                    child: Center(
                      child: Text(
                        'Experience',
                        style: TextStyle(color: KMediumBlue, fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  BlocBuilder<ExperienceBloc, ExperienceState>(
                    builder: (context, state) {
                      positionController.text = state.experience.positionName ?? "";
                      return CustomTypeAhead<Position>(
                        label: 'Position',
                        optionsBuilder: (context, item) {
                          return ListTile(
                            title: Text(item.name),
                          );
                        },
                        errorText: state.positionErrorMessage,
                        controller: positionController,
                        context: context,
                        hintText: 'type your position',
                        suggestionsCallback: (String pattern) async {
                          final result = await context.read<ExperienceBloc>().getPositionSuggestions(pattern);
                          return result;
                        },
                        onSelected: (object) {
                          positionController.text = object.name.toString();
                          context.read<ExperienceBloc>().add(EditPosition(object.name));
                        },
                      );
                    },
                  ),
                  BlocBuilder<ExperienceBloc, ExperienceState>(
                    builder: (context, state) {
                      companyNameController.text = state.experience.companyName ?? "";
                      return CustomTypeAhead<Company>(
                        label: 'Company Name',
                        optionsBuilder: (context, item) {
                          return ListTile(
                            title: Text(item.name),
                          );
                        },
                        errorText: state.companyNameErrorMessage,
                        controller: companyNameController,
                        context: context,
                        hintText: 'type your companyName',
                        suggestionsCallback: (String pattern) async {
                          final result = await context.read<ExperienceBloc>().getCompaniesSuggestions(pattern);
                          return result;
                        },
                        onSelected: (object) {
                          companyNameController.text = object.name.toString();
                          context.read<ExperienceBloc>().add(EditCompanyName(object.name));
                        },
                      );
                    },
                  ),
                  BlocBuilder<ExperienceBloc, ExperienceState>(
                    builder: (context, state) {
                      employeeTypeController.text = state.experience.employeeType ?? "";
                      return CustomTypeAhead<String>(
                        label: 'Employee Type',
                        optionsBuilder: (context, item) {
                          return ListTile(
                            title: Text(item),
                          );
                        },
                        errorText: state.typeErrorMessage,
                        controller: employeeTypeController,
                        context: context,
                        hintText: 'type your employee Type',
                        suggestionsCallback: (String pattern) async {
                          final result = await context.read<ExperienceBloc>().getEmployeeTypesSuggestions(pattern);
                          return result;
                        },
                        onSelected: (object) {
                          employeeTypeController.text = object.toString();
                          context.read<ExperienceBloc>().add(EditEmployeeType(object));
                        },
                      );
                    },
                  ),
                  BlocBuilder<ExperienceBloc, ExperienceState>(
                    builder: (context, state) {
                      locationController.text = state.experience.location?.country.name ?? "";
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
                          final result = await context.read<ExperienceBloc>().getLocationSuggestions(pattern);
                          return result;
                        },
                        onSelected: (object) {
                          locationController.text = object.country.name.toString();
                          context.read<ExperienceBloc>().add(EditLocation(object));
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
                      BlocBuilder<ExperienceBloc, ExperienceState>(
                        builder: (context, state) {
                          startMonth = state.experience.startDate?.month ?? "";
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
                      BlocBuilder<ExperienceBloc, ExperienceState>(
                        builder: (context, state) {
                          startYear = state.experience.startDate?.month ?? "";
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
                      BlocBuilder<ExperienceBloc, ExperienceState>(
                        builder: (context, state) {
                          endMonth = state.experience.startDate?.month ?? "";
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
                      BlocBuilder<ExperienceBloc, ExperienceState>(
                        builder: (context, state) {
                          endYear = state.experience.startDate?.month ?? "";
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
                            Radius.circular(60.0),
                          ),
                        ),
                        child: BlocBuilder<ExperienceBloc, ExperienceState>(
                          builder: (context, state) {
                            bool valid = context.read<ExperienceBloc>().isValid(state);
                            Date startDate = Date(day: "", month: startMonth, year: startYear);
                            Date endDate = Date(day: "", month: endMonth, year: endYear);
                            return RaisedButton(
                                    onPressed: valid
                                        ? () {
                                            context.read<ExperienceBloc>().add(EditStartDate(startDate));
                                            context.read<ExperienceBloc>().add(EditEndDate(endDate));
                                            context.read<ExperienceBloc>().add(const AddEvent());
                                            Navigator.pop(context, state.experiences);
                                          }
                                        : null,
                                    disabledColor: const Color(0xff697A84),
                                    disabledElevation: 1,
                                    disabledTextColor: Colors.white,
                                    child: Center(
                                      child: Text(
                                        "Add",
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
}
