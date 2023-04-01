import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdcin_ca/core/presentation/widgets/customText.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/customShowSnackBar.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/organization/organization_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/constants.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_stash.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/cusom_button.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/customTextFormField.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/custom_sizeBox.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/danger_text.dart';

class ContactInfoOrganizationWidget extends StatefulWidget {
  final BuildContext context;
  ContactInfoOrganizationWidget(
    this.context, {
    Key? key,
  }) : super(key: key);

  @override
  State<ContactInfoOrganizationWidget> createState() =>
      _ContactInfoOrganizationWidgetState();
}

class _ContactInfoOrganizationWidgetState
    extends State<ContactInfoOrganizationWidget> {
  final infoEmailAddressController = TextEditingController();
  final organizationPhoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrganizationBloc, OrganizationState>(
      listenWhen: (prev, next) {
        return prev.confirmEmailCodeResponse != next.confirmEmailCodeResponse;
      },
      listener: (context, state) {
        state.confirmEmailCodeResponse.fold(
          () => null,
          (a) => a.fold(
            (l) => CustomShowSnakBar(context: context, text: l.toString()),
            (r) => CustomShowSnakBar(
                context: context, text: r["message"].toString()),
          ),
        );
      },
      builder: (context, state) {
        final _bloc = context.read<OrganizationBloc>();
        return Column(
          children: [
            InkWell(
              child: Dangertext(
                text: kEnterOrganizationInfo,
                context: this.widget.context,
              ),
              onTap: () {
                infoEmailAddressController.text = "yahea.shamas@gmail.com";
                organizationPhoneController.text = "0988439723";
                passwordController.text = "123456789Aa";
                confirmPasswordController.text = "123456789Aa";
              },
            ),
            CustomSizeBox(height: 17),
            //Info email address
            CustomText(
              text: "Info email address",
              color: kSecondaryColor,
              fontSize: 16,
            ),
            CustomSizeBox(),
            CustomTextFormField(
              controller: infoEmailAddressController,
              text: "Type info email address",
              textInputType: TextInputType.emailAddress,
              onChange: (value) {
                _bloc.add(
                  OrganizationEvent.enterEmailAddress(value),
                );
              },
              validationMessage: _bloc.state.validateOrganizationEmailAddress,
            ),
            CustomSizeBox(),
            //Organization phone
            CustomText(
              text: "Organization phone",
              color: kSecondaryColor,
              fontSize: 16,
            ),
            CustomSizeBox(),
            CustomTextFormField(
              controller: organizationPhoneController,
              text: "+1-4-43-545",
              inputFormatter: [FilteringTextInputFormatter.digitsOnly],
              textInputType: TextInputType.phone,
              onChange: (value) {
                _bloc.add(
                  OrganizationEvent.enterPhoneNumber(value),
                );
              },
              validationMessage: _bloc.state.validateOrganizationPhoneNumber,
            ),
            CustomSizeBox(),
            //Password
            CustomText(
              text: "Password",
              color: kSecondaryColor,
              fontSize: 16,
            ),
            CustomSizeBox(),
            CustomTextFormField(
              controller: passwordController,
              text: "Type your password",
              textInputType: TextInputType.visiblePassword,
              suffix: _bloc.state.isSecurityPassword
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              isSecure: _bloc.state.isSecurityPassword,
              suffixFunction: () {
                _bloc.add(OrganizationEvent.changeStatusSecurityPassword());
              },
              onChange: (value) {
                _bloc.add(
                  OrganizationEvent.enterPassword(value),
                );
              },
              validationMessage: _bloc.state.validateOrganizationPassword,
            ),
            CustomSizeBox(),
            //Confirm Password
            CustomText(
              text: "Confirm Password",
              color: kSecondaryColor,
              fontSize: 16,
            ),
            CustomSizeBox(),
            CustomTextFormField(
              controller: confirmPasswordController,
              text: "Type your password",
              textInputType: TextInputType.visiblePassword,
              isSecure: _bloc.state.isSecurityConfirmPassword,
              suffix: _bloc.state.isSecurityConfirmPassword
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              suffixFunction: () {
                _bloc.add(const OrganizationEvent
                    .changeStatusSecurityConfirmPassword());
              },
              onChange: (value) {
                _bloc.add(
                  OrganizationEvent.enterConfirmPassword(
                    _bloc.state.password,
                    value,
                  ),
                );
                InputStash.passwordConfirmation = value;
              },
              validationMessage:
                  _bloc.state.validateOrganizationConfirmedPassword,
            ),
            CustomSizeBox(height: 25),
            //button submit
            Center(
              child: InkWell(
                child: CustomButton(
                  context: context,
                  isActive:
                      _bloc.state.componentIsValid, // check if next is Active
                  text: 'Next',
                ),
                onTap: () {
                  if (state.componentIsValid) {
                    SystemChannels.textInput.invokeMethod('TextInput.hide');
                    _bloc.add(OrganizationEvent.sendCodeToEmailResponse(
                      infoEmailAddressController.text,
                    ));
                    _bloc.add(
                      const OrganizationEvent.changeStateComponentIsInvalid(),
                    );
                    context
                        .read<SignUpBloc>()
                        .add(const SignUpEvent.nextIsTapped());
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
