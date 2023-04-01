import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/presentation/routes/routes.dart';
import 'package:mdcin_ca/core/presentation/widgets/app_logo.dart';
import 'package:mdcin_ca/core/presentation/widgets/customText.dart';
import 'package:mdcin_ca/core/presentation/widgets/customTextButton.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/pages/forgotPassword_page.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/customShowSnackBar.dart';
import 'package:mdcin_ca/features/auth/signin/presentation/bloc/signin_bloc.dart';
import 'package:mdcin_ca/features/home/presentation/pages/homePage.dart';

import '../../../signup/presentation/widgets/core/customTextFormField.dart';

class SignInPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    minimumSize: Size(250.w, 40.h),
    backgroundColor: kPrimaryColor,
    padding: const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 8.0,
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),
            child: BlocProvider<SignInBloc>(
              create: (BuildContext context) => getIt<SignInBloc>(),
              child: BlocConsumer<SignInBloc, SignInState>(
                listenWhen: (prev, next) {
                  return prev.signInResponse != next.signInResponse;
                },
                listener: (BuildContext context, state) {
                  state.signInResponse.fold(
                    () => null,
                    (a) {
                      a.fold(
                        (l) => CustomShowSnakBar(
                          context: context,
                          text: l.toString(),
                        ),
                        (r) {
                          CustomShowSnakBar(
                            context: context,
                            text: r["message"].toString(),
                          );
                          navigateToRemove(
                              context: context, Widget: HomePage());
                        },
                      );
                    },
                  );
                },
                builder: (BuildContext context, state) {
                  var _bloc = context.read<SignInBloc>();
                  return Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppLogo(),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomText(
                          text: "Sign in",
                          alignment: Alignment.center,
                          fontSize: 36.5,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).indicatorColor,
                        ),
                        const SizedBox(height: 6),
                        CustomText(
                          text: "Welcome to Mdcin",
                          alignment: Alignment.center,
                          fontSize: 20,
                          color: Theme.of(context).indicatorColor,
                        ),
                        const SizedBox(
                          height: 60.0,
                        ),
                        //form
                        //email
                        CustomText(
                          text: "E-mail",
                          alignment: Alignment.centerLeft,
                          fontSize: 15,
                          color: Theme.of(context).indicatorColor,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        CustomTextFormField(
                          controller: emailController,
                          text: "type your Email or phone number",
                          iconData: Icons.person_outline,
                          textInputType: TextInputType.emailAddress,
                          onChange: (value) {
                            formKey.currentState!.validate();
                            _bloc.add(SignInEvent.emailValidation(value));
                          },
                          validation: (value) {
                            return _bloc.state.errorMessageEmail.fold(
                              (l) => l,
                              (r) => null,
                            );
                          },
                        ),
                        //password
                        const SizedBox(
                          height: 30.0,
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
                        CustomTextFormField(
                          controller: passwordController,
                          text: "Type your Password",
                          iconData: Icons.lock_outlined,
                          isSecure: state.secretField,
                          suffix: state.secretField
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          textInputType: TextInputType.visiblePassword,
                          onChange: (value) {
                            _bloc.add(SignInEvent.passwordValidation(value));
                          },
                          validationMessage:
                              _bloc.state.errorMessagePassword.fold(
                            (l) => l,
                            (r) => null,
                          ),
                          suffixFunction: () {
                            _bloc.add(
                              SignInEvent.secretFieldPassword(
                                  state.secretField),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: state.rememberMe,
                                  checkColor: Colors.white,
                                  activeColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  onChanged: (value) {
                                    context.read<SignInBloc>().add(
                                            SignInEvent.clickOnButtonRememberMe(
                                          state.rememberMe,
                                        ));
                                  },
                                ),
                                CustomText(
                                  text: "Remember me",
                                  alignment: Alignment.centerLeft,
                                  fontSize: 15,
                                  color: Theme.of(context).hintColor,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                navigateTo(
                                  context: context,
                                  Widget: ForgotPasswordPage(),
                                );
                              },
                              child: CustomText(
                                text: "Forgot password?",
                                alignment: Alignment.centerRight,
                                fontSize: 15,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                          ],
                        ),
                        //button submit
                        const SizedBox(
                          height: 42.0,
                        ),
                        state.loading
                            ? const CircularProgressIndicator(
                                color: kPrimaryColor,
                              )
                            : CustomTextButton(
                                text: CustomText(
                                  text: "Sign In",
                                  alignment: Alignment.center,
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    _bloc.add(
                                      SignInEvent.clickOnButtonSignIn(
                                        emailController.text,
                                        passwordController.text,
                                      ),
                                    );
                                  }
                                },
                              ),

                        SizedBox(
                          height: 15.5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "New to Mdcin ?  ",
                            ),
                            InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      contentPadding: EdgeInsets.zero,
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                            height: 60,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: const Center(
                                              child: Text(
                                                "Failure",
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  fontStyle: FontStyle.italic,
                                                  fontFamily: "Helvetica",
                                                ),
                                              ),
                                            ),
                                          ),
                                          Divider(),
                                          Container(
                                            height: 40,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: const Center(
                                              child: Text(
                                                "error",
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  fontStyle: FontStyle.italic,
                                                  fontFamily: "Helvetica",
                                                ),
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text("refresh"),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: CustomText(
                                text: "Join now",
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
