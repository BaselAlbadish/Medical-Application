import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../../../blocs/Skills/skills_bloc.dart';
import '../experience/sure_experience.dart';
import 'LinearProgressIndicator_widget.dart';
import '../../my_text.dart';
import 'alertdialog_skills.dart';

class SkillItem extends StatelessWidget {
  SkillItem({required this.index, required this.skill, Key? key}) : super(key: key);

  Skill skill;
  int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, bottom: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: skill.name,
                    fontSize: 16.sp,
                    color: KDarkBlue,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  LinearProgressIndicatorWidget(progressValue: double.parse(skill.level.toString())),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: BlocBuilder<SkillsBloc, SkillsState>(
              builder: (context, state) {
                return Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () async {
                          bool sure = await showDialog(
                            barrierDismissible: false,
                            builder: (context) => const SureExperience(),
                            context: context,
                          );
                          if (sure) {
                            context.read<SkillsBloc>().add(DeleteEvent(state.skills[index]));
                          }
                        },
                        child: Icon(Icons.delete, color: KLightBlue, size: 25.w)),
                    SizedBox(width: 15.w),
                    GestureDetector(
                        onTap: () async {
                          context.read<SkillsBloc>().add(EditEvent(state.skills[index]));
                          SkillsBloc _bloc = context.read<SkillsBloc>();
                          await showDialog(
                            barrierDismissible: false,
                            builder: (_) => BlocProvider.value(
                              value: _bloc,
                              child: DialogSkills(editingType: "update"),
                            ),
                            context: context,
                          );
                        },
                        child: Icon(Icons.edit, color: KLightBlue, size: 25.w)),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
