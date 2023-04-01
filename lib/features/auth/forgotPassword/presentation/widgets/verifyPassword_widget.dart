import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/widgets/customText.dart';
import 'package:mdcin_ca/core/presentation/widgets/custromTextButtonBorder.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/bloc/forgot_password_bloc.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/customShowSnackBar.dart';

class VerifyPasswordWidget extends StatelessWidget {
  final verifyController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        state.resultVerify.fold(
          () => null,
          (a) => a.fold(
            (l) {
              CustomShowSnakBar(context: context, text: l.toString());
            },
            (r) {
              CustomShowSnakBar(
                  context: context, text: r["message"].toString());
              verifyController.clear();
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
                text: "Did you forget  your password ?",
                alignment: Alignment.center,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                color: kSecondaryColor,
              ),
              SizedBox(
                height: 7.h,
              ),
              CustomText(
                text: "Reset your password in two quick steps",
                alignment: Alignment.center,
                fontSize: 12.sp,
                color: kSecondaryColor,
              ),
              SizedBox(
                height: 44.h,
              ),
              CustomText(
                text: "E-mail",
                fontSize: 14,
                color: kSecondaryColor,
              ),
              TextFormField(
                controller: verifyController,
                cursorColor: kSecondaryColor,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: kAlternativeColor,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: kAlternativeColor,
                    ),
                  ),
                ),
                onChanged: (value) {
                  formKey.currentState!.validate();
                  _bloc.add(ForgotPasswordEvent.emailValidation(value));
                },
                validator: (value) {
                  return _bloc.state.errorMessageEmail.fold(
                    (l) => l,
                    (r) => null,
                  );
                },
              ),
              SizedBox(
                height: 44.h,
              ),
              state.loading
                  ? const CircularProgressIndicator(
                      color: kSecondaryColor,
                    )
                  : CustomTextButtonBorder(
                      text: CustomText(
                        text: "Reset Password",
                        alignment: Alignment.center,
                        fontSize: 15.w,
                        color: kPrimaryColor,
                      ),
                      colorText: kPrimaryColor,
                      onPressed: () {
                        print("index is => ${_bloc.state.index}");
                        if (formKey.currentState!.validate()) {
                          _bloc.add(
                            ForgotPasswordEvent.verifyByEmail(
                              verifyController.text,
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
