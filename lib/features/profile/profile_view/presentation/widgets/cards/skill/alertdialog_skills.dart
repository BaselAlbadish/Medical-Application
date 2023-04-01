import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/presentation/responsive_logic/logic.dart';
import '../../../../../../auth/signup/presentation/widgets/core/custom_typeahead.dart';
import '../../../../../core/presintation/widgets/shadow_text_field.dart';
import '../../../blocs/Skills/skills_bloc.dart';
import '../../../constants.dart';

class DialogSkills extends StatelessWidget {
  DialogSkills({required this.editingType, Key? key}) : super(key: key);

  String editingType;

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: SizedBox(
        height: getScreenHeight(context) - 300.h,
        width: getScreenWidth(context),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.h, right: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                  child: Center(
                    child: Text(
                      'Skill Info',
                      style: TextStyle(color: KMediumBlue, fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                BlocBuilder<SkillsBloc, SkillsState>(
                  builder: (context, state) {
                    nameController.text = state.skill.name ?? "";
                    return CustomTypeAhead<String>(
                      label: 'Skill name',
                      optionsBuilder: (context, item) {
                        return ListTile(
                          title: Text(item),
                        );
                      },
                      errorText: state.nameErrorMessage,
                      controller: nameController,
                      context: context,
                      hintText: 'type your skill name',
                      suggestionsCallback: (String pattern) async {
                        final result = await context.read<SkillsBloc>().getSkillsSuggestions(pattern);
                        return result;
                      },
                      onSelected: (object) {
                        nameController.text = object;
                        context.read<SkillsBloc>().add(EditSkillName(object));
                      },
                    );
                  },
                ),
                BlocBuilder<SkillsBloc, SkillsState>(
                  builder: (context, state) {
                    return ShadowTextField(
                        type: TextInputType.number,
                        initValue: state.skill.level,
                        height: 38.h,
                        hintText: 'type your skill level',
                        title: 'Skill level',
                        fontSizeForHintText: 14.sp,
                        errorLabel: state.levelErrorMessage,
                        fontSizeForTitle: 16.sp,
                        width: getScreenWidth(context),
                        onChange: (level) {
                          context.read<SkillsBloc>().add(EditSkillLevel(level));
                        });
                  },
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
                      child: BlocBuilder<SkillsBloc, SkillsState>(
                        builder: (context, state) {
                          bool valid = context.read<SkillsBloc>().isValid(state);
                          return RaisedButton(
                            onPressed: valid
                                ? () {
                                    if (editingType == "add") {
                                      context.read<SkillsBloc>().add(const AddEvent());
                                    } else {
                                      context.read<SkillsBloc>().add(const UpdateEvent());
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
