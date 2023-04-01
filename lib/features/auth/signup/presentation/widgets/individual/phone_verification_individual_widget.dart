import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/customShowSnackBar.dart';

import '../../../../../../core/presentation/widgets/customText.dart';
import '../../../../../../core/themes/light_theme.dart';
import '../../blocs/sign_up_bloc/sign_up_bloc.dart';
import '../core/cusom_button.dart';
import '../core/custom_sizeBox.dart';

class PhoneVerificationIndividualWidget extends StatefulWidget {
  const PhoneVerificationIndividualWidget(this.context, {Key? key})
      : super(key: key);
  final BuildContext context;

  @override
  State<PhoneVerificationIndividualWidget> createState() =>
      _PhoneVerificationIndividualWidgetState();
}

class _PhoneVerificationIndividualWidgetState
    extends State<PhoneVerificationIndividualWidget> {
  final codeController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.resultCodeVerification.fold(
          () => null,
          (a) => a.fold(
            (l) => CustomShowSnakBar(context: context, text: l.toString()),
            (r) {
              CustomShowSnakBar(context: context, text: r);
            },
          ),
        );
      },
      builder: (context, state) {
        var _bloc = context.read<SignUpBloc>();
        return Form(
          key: formKey,
          child: Column(
            children: [
              CustomText(
                text: 'We sent the code to your phone number',
                color: kSecondaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w800,
                alignment: Alignment.center,
              ),
              CustomSizeBox(),
              CustomText(
                text: 'Enter the verification code please',
                color: kSecondaryColor,
                fontSize: 12,
                alignment: Alignment.center,
              ),
              CustomSizeBox(
                height: 41.5,
              ),
              CustomSizeBox(
                height: 60,
                width: 210,
                widget: Column(
                  children: [
                    TextField(
                      maxLength: 6,
                      controller: codeController,
                      style: TextStyle(
                        color: Theme.of(widget.context).indicatorColor,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Code',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: kSecondaryColor,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onChanged: (value) {
                        _bloc
                            .add(SignUpEvent.componentIsValidCodeNumber(value));
                      },
                    ),
                  ],
                ),
              ),
              CustomSizeBox(height: 136),
              _bloc.state.loading
                  ? const CircularProgressIndicator()
                  : GestureDetector(
                      onTap: () {
                        _bloc.add(
                            SignUpEvent.confirmEmailCode(codeController.text));
                        // if () {

                        // }

                        // navigateToRemove(
                        //   context: context,
                        //   Widget: SignUpAddPhoto(context),
                        // );
                      },
                      child: Center(
                        child: CustomButton(
                          context: context,
                          isActive: _bloc.state
                              .componentIsValidCodeNumber, // check if next is Active
                          text: 'Next',
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
