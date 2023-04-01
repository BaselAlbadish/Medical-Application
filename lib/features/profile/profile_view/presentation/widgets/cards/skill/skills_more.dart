import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/widgets/cards/skill/skill_item.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../../../blocs/Skills/skills_bloc.dart';
import '../../../constants.dart';

class SkillsMore extends StatelessWidget {
  SkillsMore({required this.list, Key? key}) : super(key: key);
  List<Skill> list;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              BlocBuilder<SkillsBloc, SkillsState>(
                builder: (context, state) {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: SkillItem(
                          index: index,
                          skill: state.skills[index],
                        ),
                      );
                    },
                  );
                },
              ),
              Center(
                child: Container(
                  height: alertButtonHeight.h,
                  width: alertButtonWidth.w,
                  decoration: const BoxDecoration(
                    color: KNewBlue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text(
                        "Done",
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
