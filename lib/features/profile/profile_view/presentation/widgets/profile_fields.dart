import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/widgets/field_button.dart';
import '../../../../../configure_di.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/presentation/core_constants.dart';
import '../../domain/repositories/init_infornation_repository.dart';

class ProfileFields extends StatelessWidget {
  ProfileFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt<FillDataRepository>().getIndividualStates(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data as Either;
            if(data.isRight()){
              final value = data.getOrElse(() => null);
              IndividualProfileState individualProfileState = value;
              getIt<ProfileStore>().setProfileStates(individualProfileState);
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 20.h, left: 10.w, right: 10.w),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      FieldButton(
                        title: 'Basic info',
                        subTitle: individualProfileState.basicInfoStatus,
                        onPressed: () {
                          // showAlertDialogBasicInfo(context);
                        },
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      FieldButton(
                        title: 'Contact',
                        subTitle: individualProfileState.contactStatus,
                        subTitleColor: KDarkBlue,
                        onPressed: () {
                          //TODO
                        },
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      FieldButton(
                        title: 'Skills',
                        subTitle: individualProfileState.skillInfoStatus,
                        onPressed: () {
                          //TODO
                        },
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      FieldButton(
                        title: 'Experience',
                        subTitle: individualProfileState.experienceStatus,
                        subTitleColor: KDarkBlue,
                        onPressed: () {
                          //TODO
                        },
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      FieldButton(
                        title: 'Education',
                        subTitle: individualProfileState.educationStatus,
                        subTitleColor: KDarkBlue,
                        onPressed: () {
                          //TODO
                          // showAlertDialogEducation(context);
                        },
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                    ],
                  ),
                ),
              );
            }else{
              Failure failure = data.getOrElse(() => null);
              if(failure is NetworkFailure){
                NetworkFailure networkFailure = failure;
                return Text(networkFailure.message);
              }else{
                return Text(failure.toString());
              }
            }
          } else {
            return Container(
                padding: const EdgeInsets.all(30),
                child: const LinearProgressIndicator(backgroundColor: Colors.white, color: KNewBlue));
          }
        });
  }
}
