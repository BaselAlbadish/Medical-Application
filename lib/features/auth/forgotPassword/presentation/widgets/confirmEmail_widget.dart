import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/widgets/customText.dart';
import 'package:mdcin_ca/core/presentation/widgets/custromTextButtonBorder.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/bloc/forgot_password_bloc.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/code_verification.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/customShowSnackBar.dart';

class ConfirmEmailWidget extends StatelessWidget {
  final confirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  int Attempts = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listenWhen: (prev, next) {
        return prev.message != next.message || prev.resultVerify != next.resultVerify;
      },
      listener: (context, state) {
        //form
        state.message.fold(
          () => null,
          (a) => a.fold(
            (l) => CustomShowSnakBar(context: context, text: l.toString()),
            (r) => CustomShowSnakBar(context: context, text: r.toString()),
          ),
        );
        //resend code
        state.resultVerify.fold(
          () => null,
          (a) => a.fold(
            (l) => CustomShowSnakBar(context: context, text: "Try again"),
            (r) => CustomShowSnakBar(context: context, text: "resend success"),
          ),
        );
      },
      builder: (context, state) {
        final _bloc = context.read<ForgotPasswordBloc>();
        return Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "We sent the code to your phone number",
                alignment: Alignment.center,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                color: kSecondaryColor,
              ),
              SizedBox(
                height: 7.h,
              ),
              CustomText(
                text: "Enter the verification code please ",
                alignment: Alignment.center,
                fontSize: 12.sp,
                color: kSecondaryColor,
              ),
              SizedBox(
                height: 44.h,
              ),
              CustomText(
                text: "your code!",
                fontSize: 14,
                color: kSecondaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              //new code
              VerificationCodeField(
                textEditingController: confirmController,
                length: 6,
                onChanged: (value) {
                  confirmController.text = value;
                  _bloc.add(
                    ForgotPasswordEvent.codeEmailValidation(value),
                  );
                },
                onCompleted: (value) {},
              ),
              Text(
                _bloc.state.errorMessageCodeEmail.fold(
                  (l) => l,
                  (r) => "",
                ),
                style: const TextStyle(color: Colors.red),
              ),
              //old code

              // TextFormField(
              //   maxLength: 6,
              //   controller: confirmController,
              //   cursorColor: kSecondaryColor,
              //   inputFormatters: <TextInputFormatter>[
              //     FilteringTextInputFormatter.digitsOnly
              //   ],
              //   keyboardType: TextInputType.phone,
              //   decoration: const InputDecoration(
              //     enabledBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(
              //         color: kAlternativeColor,
              //       ),
              //     ),
              //     focusedBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(
              //         color: kAlternativeColor,
              //       ),
              //     ),
              //   ),
              //   onChanged: (value) {
              //     _bloc.add(
              //       ForgotPasswordEvent.codeEmailValidation(value),
              //     );
              //     formKey.currentState!.validate();
              //   },
              //   validator: (value) {
              //     return _bloc.state.errorMessageCodeEmail.fold(
              //       (l) => l,
              //       (r) => null,
              //     );
              //   },
              // ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: 100.w,
                child: InkWell(
                    child: CustomText(
                      text: "Resend the code",
                      color: kSecondaryColor,
                    ),
                    onTap: () async {
                      if (Attempts < 1) {
                        _bloc.add(ForgotPasswordEvent.resendEmail(state.email));
                        Attempts++;
                      } else {
                        await Future.delayed(Duration(seconds: 5))
                            .then((value) {
                          _bloc.add(
                              ForgotPasswordEvent.resendEmail(state.email));
                        });
                      }
                    }),
              ),
              SizedBox(
                height: 44.h,
              ),
              state.loading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: kSecondaryColor,
                      ),
                    )
                  : CustomTextButtonBorder(
                      text: CustomText(
                        text: "Send",
                        alignment: Alignment.center,
                        color: kPrimaryColor,
                        fontSize: 15.w,
                      ),
                      colorText: kPrimaryColor,
                      onPressed: () {
                        print("index is => ${_bloc.state.index}");
                        if (_bloc.state.errorMessageCodeEmail.isRight()) {
                          print(confirmController.text);
                          _bloc.add(
                            ForgotPasswordEvent.confirmEmail(
                              confirmController.text,
                              state.remoteCode,
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
