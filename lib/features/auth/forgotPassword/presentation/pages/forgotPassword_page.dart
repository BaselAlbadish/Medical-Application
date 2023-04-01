  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/presentation/widgets/app_logo.dart';
import 'package:mdcin_ca/core/presentation/widgets/customText.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/bloc/forgot_password_bloc.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/changePassword_widget.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/confirmEmail_widget.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/verifyPassword_widget.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/custom_sizeBox.dart';

class ForgotPasswordPage extends StatelessWidget {
  List<Widget> logicForgotPassword = [
    VerifyPasswordWidget(),
    ConfirmEmailWidget(),
    ChangePasswordWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordBloc>(),
      child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
        listener: (context, state) {},
        builder: (context, state) {
          final _bloc = context.read<ForgotPasswordBloc>();
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const AppLogo(),
                         CustomSizeBox(height:40),
                          Expanded(child: logicForgotPassword[state.index]),
                          SizedBox(
                            height: 110.h,
                          ),
                          state.index > 0
                              ? Container(
                                  width: 33.w,
                                  child: InkWell(
                                    child: CustomText(
                                      text: "Back",
                                      alignment: Alignment.bottomLeft,
                                      color: kAlternativeColor,
                                      fontSize: 15,
                                    ),
                                    onTap: () {
                                      _bloc.add(
                                        const ForgotPasswordEvent
                                            .decrementIndex(),
                                      );
                                    },
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
