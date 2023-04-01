import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/routes/routes.dart';
import 'package:mdcin_ca/core/presentation/widgets/customText.dart';
import 'package:mdcin_ca/core/presentation/widgets/customTextButton.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/bloc/forgot_password_bloc.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/customShowSnackBar.dart';
import 'package:mdcin_ca/features/auth/signin/presentation/pages/signin_page.dart';

import '../../../signup/presentation/widgets/core/customTextFormField.dart';

class ChangePasswordWidget extends StatelessWidget {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        state.message.fold(
          () => null,
          (a) => a.fold(
            (l) => CustomShowSnakBar(context: context, text: l.toString()),
            (r) {
              CustomShowSnakBar(context: context, text: r.toString());
              navigateTo(context: context, Widget: SignInPage());
            },
          ),
        );
      },
      builder: (context, state) {
        final _bloc = context.read<ForgotPasswordBloc>();
        return Form(
          key: formKey,
          child: Column(
            children: [
              CustomText(
                text: "please enter your new password",
                alignment: Alignment.center,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                color: kSecondaryColor,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomText(
                text: "Password",
                alignment: Alignment.centerLeft,
                fontSize: 15,
                color: Theme.of(context).indicatorColor,
              ),
              const SizedBox(
                height: 12.0,
              ),
              //first textFormField
              CustomTextFormField(
                controller: passwordController,
                text: "Type your Password",
                iconData: Icons.lock_outlined,
                isSecure: state.secretPassword,
                suffix: state.secretPassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                textInputType: TextInputType.visiblePassword,
                validation: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your password";
                  } else if (value.length <= 8) {
                    return "Please enter than 8 character";
                  }
                },
                suffixFunction: () {
                  _bloc.add(
                    ForgotPasswordEvent.changeSecretPassword(
                      state.secretPassword,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomText(
                text: "Confirm Password",
                alignment: Alignment.centerLeft,
                fontSize: 15,
                color: Theme.of(context).indicatorColor,
              ),
              const SizedBox(
                height: 12.0,
              ),
              //last textFormField
              CustomTextFormField(
                controller: confirmPasswordController,
                text: "Type your Confirm Password",
                iconData: Icons.lock_outlined,
                isSecure: state.secretConfirmPassword,
                suffix: state.secretConfirmPassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                textInputType: TextInputType.visiblePassword,
                validation: (value) {
                  if (value!.isEmpty) {
                    return "Please enter confirm password";
                  } else if (value != passwordController.text) {
                    return "Password not equal confirm password";
                  }
                },
                suffixFunction: () {
                  _bloc.add(
                    ForgotPasswordEvent.changeSecretConfirmPassword(
                      state.secretConfirmPassword,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 40.h,
              ),
              state.loading
                  ? const CircularProgressIndicator(
                      color: kSecondaryColor,
                    )
                  : CustomTextButton(
                      text: CustomText(
                        text: "Done",
                        color: Colors.white,
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        print("index is => ${_bloc.state.index}");
                        if (formKey.currentState!.validate()) {
                          _bloc.add(
                            ForgotPasswordEvent.changePassword(
                              confirmPasswordController.text,
                              state.accountId,
                            ),
                          );
                        }
                      },
                    )
            ],
          ),
        );
      },
    );
  }
}
