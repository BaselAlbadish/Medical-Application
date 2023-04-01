import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/widgets/cards/experience/sure_experience.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/presentation/responsive_logic/logic.dart';
import '../../../../domain/entities/profile/profile_model.dart';
import '../../../blocs/Experience/experience_bloc.dart';
import '../../my_text.dart';
import 'alertdialog_experience.dart';

class ExperienceItem extends StatelessWidget {
  ExperienceItem({required this.companyName,
    required this.profession,
    required this.date,
    required this.index,
    required this.employeeType,
    required this.pickedImage,
    Key? key})
      : super(key: key);
  int index;
  String pickedImage;
  String companyName;
  String profession;
  String date;
  String employeeType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getScreenWidth(context) * (3 / 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage: AssetImage(pickedImage),
                      radius: 22.w,
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: '$companyName Company',
                          fontSize: 12.sp,
                          color: KMediumBlue,
                        ),
                        MyText(text: '$profession - $employeeType', fontSize: 10.sp),
                      ],
                    ),
                  ],
                ),
              ),
              MyText(text: date, fontSize: 10.sp),
            ],
          ),
          Row(
            children: <Widget>[
              BlocBuilder<ExperienceBloc, ExperienceState>(
                builder: (context, state) {
                  return GestureDetector(
                    onTap: () async {
                      bool sure = await showDialog(
                        barrierDismissible: false,
                        builder: (context) => const SureExperience(),
                        context: context,
                      );
                      if (sure) {
                        context.read<ExperienceBloc>().add(DeleteEvent(state.experiences[index]));
                      }
                    },
                    child: Icon(Icons.delete, color: KLightBlue, size: 22.w),
                  );
                },
              ),
              SizedBox(width: 10.w),
              BlocBuilder<ExperienceBloc, ExperienceState>(
                builder: (context, state) {
                  return GestureDetector(
                    onTap: () async {
                      context.read<ExperienceBloc>().add(EditEvent(state.experiences[index]));
                      ExperienceBloc _bloc =  context.read<ExperienceBloc>();
                        await showDialog(
                        barrierDismissible: false,
                        builder: (_) => BlocProvider.value(
                          value: _bloc,
                          child: DialogExperience(editType: "update"),
                        ),
                        context: context,
                      );
                    },
                    child: Icon(Icons.edit, color: KLightBlue, size: 22.w),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
