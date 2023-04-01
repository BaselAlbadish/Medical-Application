import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../configure_di.dart';
import '../../../../../core/presentation/routes/routes.dart';
import '../../../../../core/presentation/widgets/app_bar.dart';
import '../../../../../core/presentation/widgets/customText.dart';
import '../../../../../core/themes/light_theme.dart';
import '../../../signin/presentation/pages/signin_page.dart';
import '../blocs/general_user_bloc/general_user_bloc.dart';
import '../blocs/individual/basic_info/basic_info_individual_bloc.dart';
import '../blocs/individual/contact_info/contact_info_individual_bloc.dart';
import '../blocs/individual/education_bloc/education_bloc_bloc.dart';
import '../blocs/individual/work_bloc/work_bloc.dart';
import '../blocs/organization/organization_bloc.dart';
import '../blocs/sign_up_bloc/sign_up_bloc.dart';
import '../utility/input_stash.dart';
import '../widgets/core/general_user_component.dart';
import '../widgets/core/signup_stepper.dart';
import '../widgets/individual/basic_info_individual_widget.dart';
import '../widgets/individual/contact_info_individual_widget.dart';
import '../widgets/individual/done_widget.dart';
import '../widgets/individual/individual_education_widget.dart';
import '../widgets/individual/individual_work_widget.dart';
import '../widgets/individual/phone_verification_individual_widget.dart';
import '../widgets/organization/basic_info_organization_widget.dart';
import '../widgets/organization/contact_info_organization_widget.dart';
import '../widgets/organization/verification_organization_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  List<Widget> listWidgetDone(BuildContext context) {
    return [
      InputStash.primaryProfession?.name == "Student"
          ? IndividualEducationWidget(context)
          : IndividualWorkWidget(context),
      PhoneVerificationIndividualWidget(context),
    ];
  }

  List _getIndividualStepsContent(BuildContext context) {
    return [
      BlocProvider(
        create: (context) => getIt<GeneralUserBloc>(),
        child: GeneralUserComponent(context),
      ),
      BlocProvider(
        create: (context) => getIt<BasicInfoIndividualBloc>(),
        child: BasicInfoIndividualWidget(context),
      ),
      BlocProvider(
        create: (context) => getIt<ContactInfoIndividualBloc>(),
        child: ContactInfoIndividualWidget(context),
      ),
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<WorkBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<EducationBloc>(),
          ),
        ],
        child: DoneWidget(context, listWidgetDone(context)),
      ),
    ];
  }

  List _getOrganizationStepsContent(BuildContext context) {
    return [
      BlocProvider(
        create: (context) => getIt<GeneralUserBloc>(),
        child: GeneralUserComponent(context),
      ),
      BasicInfoOrganizationWidget(context),
      ContactInfoOrganizationWidget(context),
      VerificationOrganizationWidget(context)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OrganizationBloc>(
          create: (BuildContext context) => getIt<OrganizationBloc>(),
        ),
        BlocProvider<SignUpBloc>(
          create: (BuildContext context) => getIt<SignUpBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: MainAppBar(context),
        body: BlocConsumer<SignUpBloc, SignUpState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Create a free Mdcin account',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Expanded(
                  child: SignupStepper(
                    context: context,
                    index: state.stepIndex,
                    stepsContent: state.creatingIndividualAccount
                        ? _getIndividualStepsContent(context)
                        : _getOrganizationStepsContent(context),
                    onStepTapped: (index) {},
                    onStepCancel: () {
                      context
                          .read<SignUpBloc>()
                          .add(const SignUpEvent.prevIsTapped());
                    },
                    onStepContinue: () {
                      context
                          .read<SignUpBloc>()
                          .add(const SignUpEvent.nextIsTapped());
                    },
                    controlsBuilder: (
                      BuildContext context,
                      ControlsDetails details,
                    ) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(text: "Already have an account?  "),
                              InkWell(
                                child: CustomText(
                                  text: "Sign in",
                                  color: kPrimaryColor,
                                ),
                                onTap: () {
                                  navigateTo(
                                      context: context, Widget: SignInPage());
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          GestureDetector(
                            onTap: details.onStepCancel,
                            child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Back',
                                style: TextStyle(
                                  color: Color(0xff9d9d9d),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
