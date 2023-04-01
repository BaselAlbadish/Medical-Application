import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/general_user_bloc/general_user_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/constants.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_stash.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/cusom_button.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/danger_text.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/user_selector.dart';

class GeneralUserComponent extends StatelessWidget {
  const GeneralUserComponent(this.context, {Key? key}) : super(key: key);
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GeneralUserBloc, GeneralUserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Who are you?',
              style: Theme.of(this.context).textTheme.headline3,
            ),
            SizedBox(
              height: 14.h,
            ),
            Container(
              height: 90.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: UserSelector(
                      context: this.context,
                      isActive: state.individualIsSelected,
                      text: 'Individual',
                    ),
                    onTap: () {
                      // change the state of general user bloc
                      context
                          .read<GeneralUserBloc>()
                          .add(OnOrganizationOrIndividualSelected(
                            isIndividual: true,
                          ));
                      // change the state of signup bloc
                    },
                  ),
                  GestureDetector(
                    child: UserSelector(
                      context: this.context,
                      isActive: state.organizationIsSelected,
                      text: 'Organization',
                    ),
                    onTap: () {
                      // change state of general user
                      context
                          .read<GeneralUserBloc>()
                          .add(OnOrganizationOrIndividualSelected(
                            isIndividual: false,
                          ));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 42.h,
            ),
            Dangertext(
              text: kAcceptedMemberstext,
              context: this.context,
            ),
            SizedBox(
              height: 14.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.resolveWith(
                    (state) {
                      if (state.contains(MaterialState.selected)) {
                        return Theme.of(this.context).primaryColor;
                      } else {
                        return Theme.of(this.context).hintColor;
                      }
                    },
                  ),
                  value: state.acceptedTermsAndConditions,
                  onChanged: (status) {
                    // change state of general user bloc
                    context.read<GeneralUserBloc>().add(
                          OnAcceptConditionTapped(value: status!),
                        );
                  },
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'I agree with terms & conditions ',
                  style: TextStyle(
                    color: Theme.of(this.context).hintColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            GestureDetector(
              onTap: () {
                if (state.componentIsValid) {
                  InputStash.index++;
                  print("index is => ${InputStash.index}");
                  context
                      .read<GeneralUserBloc>()
                      .add(OnNextTapped()); // to stash the data
                  context.read<SignUpBloc>().add(
                      SignUpEvent.individualIsSelected(
                          state.individualIsSelected));
                  context
                      .read<SignUpBloc>()
                      .add(const SignUpEvent.nextIsTapped());
                }
              },
              child: CustomButton(
                context: context,
                isActive: context
                    .read<GeneralUserBloc>()
                    .state
                    .componentIsValid, // check if next is Active
                text: 'Next',
              ),
            ),
          ],
        );
      },
    );
  }
}
