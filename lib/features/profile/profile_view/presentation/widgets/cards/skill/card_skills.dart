import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/widgets/cards/skill/skill_item.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/widgets/cards/skill/skills_more.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/themes/light_theme.dart';
import '../../../blocs/Skills/skills_bloc.dart';
import '../../../constants.dart';
import 'alertdialog_skills.dart';
import '../../my_text.dart';

class CardSkills extends StatelessWidget {
  const CardSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SkillsBloc>(),
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
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Skills',
                      fontSize: cardTitleSize.sp,
                      fontWeight: FontWeight.bold,
                      color: KMediumBlue,
                    ),
                    BlocBuilder<SkillsBloc, SkillsState>(
                      builder: (context, state) {
                        return TextButton(
                          onPressed: () async {
                            SkillsBloc _bloc = context.read<SkillsBloc>();
                            await showDialog(
                              barrierDismissible: false,
                              builder: (_) =>
                                  BlocProvider.value(
                                    value: _bloc,
                                    child: DialogSkills(editingType: "add"),
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
                BlocBuilder<SkillsBloc, SkillsState>(
                  builder: (context, state) {
                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.skills.isEmpty
                          ? 0
                          : state.skills.length >= 2
                          ? 2
                          : 1,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 5.h),
                          child: SkillItem(
                            index: index,
                            skill: state.skills[index],
                          ),
                        );
                      },
                    );
                  },
                ),
                BlocBuilder<SkillsBloc, SkillsState>(
                  builder: (context, state) {
                    return Padding(
                      padding: EdgeInsets.only(left: 250.w),
                      child: TextButton(
                          onPressed: () {
                            SkillsBloc _bloc = context.read<SkillsBloc>();
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              Theme(
                                data: customLightTheme(),
                                child: BlocProvider.value(
                                  value: _bloc,
                                  child: SkillsMore(
                                    list: state.skills,
                                  ),
                                ),
                              );
                              return BlocProvider.value(
                                value: _bloc,
                                child: SkillsMore(
                                  list: state.skills,
                                ),
                              );
                            }));
                          },
                          child: MyText(
                            text: 'more',
                            fontSize: cardMoreSize.sp,
                            color: KMediumBlue,
                            fontWeight: FontWeight.bold,
                          )),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
