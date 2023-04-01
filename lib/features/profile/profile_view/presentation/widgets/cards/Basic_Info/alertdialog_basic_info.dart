import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/presentation/responsive_logic/logic.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/custom_typeahead.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../auth/signup/presentation/widgets/core/custom_dropdown.dart';
import '../../../../../core/presintation/widgets/shadow_text_field.dart';
import '../../../blocs/Basic_Info/basic_info_bloc.dart';
import '../../../constants.dart';
import '../../my_text.dart';

class BasicInfoDialog extends StatelessWidget {
  BasicInfoDialog({required this.context, Key? key}) : super(key: key);
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    String day = "";
    String month = "May";
    String year = "";

    TextEditingController genderController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    TextEditingController professionController = TextEditingController();

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
                      'Basic Info',
                      style: TextStyle(color: KMediumBlue, fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                BlocBuilder<BasicInfoBloc, BasicInfoState>(
                  builder: (context, state) {
                    return ShadowTextField(
                        initValue: state.basicInfo.firstName,
                        height: 38.h,
                        hintText: 'type here',
                        title: 'First Name',
                        fontSizeForHintText: 14.sp,
                        errorLabel: state.firstNameErrorMessage,
                        fontSizeForTitle: 16.sp,
                        width: getScreenWidth(context),
                        onChange: (firstName) {
                          context.read<BasicInfoBloc>().add(EditFirstName(firstName));
                        });
                  },
                ),
                BlocBuilder<BasicInfoBloc, BasicInfoState>(
                  builder: (context, state) {
                    return ShadowTextField(
                        height: 38.h,
                        hintText: 'type here',
                        initValue: state.basicInfo.lastName,
                        title: 'Last Name',
                        fontSizeForHintText: 14.sp,
                        errorLabel: state.lastNameErrorMessage,
                        fontSizeForTitle: 16.sp,
                        width: getScreenWidth(context),
                        onChange: (lastName) {
                          context.read<BasicInfoBloc>().add(EditLastName(lastName));
                        });
                  },
                ),
                BlocBuilder<BasicInfoBloc, BasicInfoState>(
                  builder: (context, state) {
                    professionController.text = state.basicInfo.primaryProfession!.name;
                    return CustomTypeAhead<Profession>(
                      label: 'Profession',
                      optionsBuilder: (BuildContext context, item) {
                        return ListTile(
                          title: Text(item.name),
                        );
                      },
                      errorText: state.professionErrorMessage,
                      controller: professionController,
                      context: this.context,
                      hintText: 'type your profession',
                      suggestionsCallback: (String pattern) async {
                        final result = await context.read<BasicInfoBloc>().getProfessionSuggestions(pattern);
                        return result;
                      },
                      onSelected: (object) {
                        professionController.text = object.name.toString();
                        context.read<BasicInfoBloc>().add(EditPrimaryProfession(object));
                      },
                    );
                  },
                ),
                BlocBuilder<BasicInfoBloc, BasicInfoState>(
                  builder: (context, state) {
                    locationController.text = state.basicInfo.primaryLocation!.country.name;
                    return CustomTypeAhead<Location>(
                      label: 'Location',
                      optionsBuilder: (BuildContext context, item) {
                        return ListTile(
                          title: Text(item.country.name),
                        );
                      },
                      errorText: state.locationErrorMessage,
                      controller: locationController,
                      context: this.context,
                      hintText: 'type your location',
                      suggestionsCallback: (String pattern) async {
                        final res = await context.read<BasicInfoBloc>().getLocationSuggestions(pattern);
                        return res;
                      },
                      onSelected: (object) {
                        genderController.text = object.country.name.toString();
                        context.read<BasicInfoBloc>().add(EditLocation(object));
                      },
                    );
                  },
                ),
                BlocBuilder<BasicInfoBloc, BasicInfoState>(
                  builder: (context, state) {
                    genderController.text = state.basicInfo.gender ?? "";
                    return CustomTypeAhead<String>(
                      label: 'Gender',
                      optionsBuilder: (BuildContext context, item) {
                        return ListTile(
                          title: Text(item),
                        );
                      },
                      errorText: state.genderErrorMessage,
                      controller: genderController,
                      context: this.context,
                      hintText: 'type your gender',
                      suggestionsCallback: (String pattern) {
                        return context.read<BasicInfoBloc>().getGenderSuggestions(pattern);
                      },
                      onSelected: (object) {
                        genderController.text = object.toString();
                        context.read<BasicInfoBloc>().add(EditGender(object.toString()));
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: MyText(
                    text: 'Birthday',
                    fontSize: 16.sp,
                    color: KMediumBlue,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BlocBuilder<BasicInfoBloc, BasicInfoState>(
                      builder: (context, state) {
                        day = state.basicInfo.birthDate!.day ?? "";
                        return CustomDropDown<String>(
                          this.context,
                          isEnabled: true,
                          callBack: (value) {
                            day = value.toString();
                          },
                          items: getIt<ProfileStore>().getDays(),
                          label: day,
                        );
                      },
                    ),
                    BlocBuilder<BasicInfoBloc, BasicInfoState>(
                      builder: (context, state) {
                        month = state.basicInfo.birthDate?.month ?? "";
                        return CustomDropDown<String>(
                          this.context,
                          isEnabled: true,
                          callBack: (value) {
                            month = value.toString();
                          },
                          items: getIt<ProfileStore>().getMonths(),
                          label: month,
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Center(
                  child: BlocBuilder<BasicInfoBloc, BasicInfoState>(
                    builder: (context, state) {
                      year = state.basicInfo.birthDate!.year ?? "";
                      return CustomDropDown<String>(
                        this.context,
                        isEnabled: true,
                        callBack: (value) {
                          year = value.toString();
                        },
                        items: getIt<ProfileStore>().getYears(),
                        label: year,
                      );
                    },
                  ),
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
                      child: BlocBuilder<BasicInfoBloc, BasicInfoState>(
                        builder: (context, state) {
                          bool valid = context.read<BasicInfoBloc>().isValidState(state);
                          Date date = Date(day: day, month: month, year: year);
                          return RaisedButton(
                            onPressed: valid
                                ? () {
                                    context.read<BasicInfoBloc>().add(EditBirthday(date));
                                    context.read<BasicInfoBloc>().add(const SaveEvent());
                                    Navigator.pop(context, state.basicInfo);
                                  }
                                : null,
                            disabledColor: const Color(0xff697A84),
                            disabledElevation: 1,
                            disabledTextColor: Colors.white,
                            child: Center(
                              child: Text(
                                "Save",
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
