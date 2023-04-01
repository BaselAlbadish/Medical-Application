import 'package:dartz/dartz.dart' as dartZ;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/widgets/customShowSnackBar.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../blocs/individual/contact_info/contact_info_individual_bloc.dart';
import '../../blocs/sign_up_bloc/sign_up_bloc.dart';
import '../../constants.dart';
import '../../utility/input_stash.dart';
import '../core/cusom_button.dart';
import '../core/customTextFormField.dart';
import '../core/custom_sizeBox.dart';
import '../core/danger_text.dart';
import 'generated_email.dart';

class ContactInfoIndividualWidget extends StatefulWidget {
  const ContactInfoIndividualWidget(
    this.context, {
    Key? key,
  }) : super(key: key);

  final BuildContext context;

  @override
  State<ContactInfoIndividualWidget> createState() =>
      _ContactInfoIndividualWidgetState();
}

class _ContactInfoIndividualWidgetState
    extends State<ContactInfoIndividualWidget> {
  final passwordEditingController = TextEditingController();
  final confirmedEditingController = TextEditingController();
  final emailEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactInfoIndividualBloc, ContactInfoIndividualState>(
      listenWhen: (previous, current) {
        return previous.sendCodeToEmailResponse !=
            current.sendCodeToEmailResponse;
      },
      listener: (context, state) {
        state.sendCodeToEmailResponse.fold(
          () => null,
          (a) => a.fold(
            (l) {
              return CustomShowSnakBar(context: context, text: l.toString());
            },
            (r) {
              return CustomShowSnakBar(
                  context: context, text: r["message"].toString());
            },
          ),
        );
        final isFailure = state.optionOfFailureOrSuccessGeneratedEmail.fold(
          () => false,
          (a) => a.fold(
            (l) => true,
            (r) => false,
          ),
        );

        if (isFailure) {
          context
              .read<ContactInfoIndividualBloc>()
              .add(ContactInfoIndividualEvent.requestProvidedEmail(
                InputStash.firstName,
                InputStash.lastName,
              ));
        }
      },
      builder: (context, state) {
        var _bloc = context.read<ContactInfoIndividualBloc>();
        return SingleChildScrollView(
          child: Form(
            autovalidateMode: state.isShowingErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Dangertext(
                    text: kAcceptedMemberstext,
                    context: widget.context,
                  ),
                  onTap: () {
                    emailEditingController.text = "yahea.shamas@gmail.com";
                    passwordEditingController.text = "123456789Aa";
                    confirmedEditingController.text = "123456789Aa";
                  },
                ),
                CustomSizeBox(),
                Text(
                  'We provide you this email',
                  style: Theme.of(widget.context).textTheme.headline2,
                ),
                CustomSizeBox(),
                VisibilityDetector(
                  key: const Key('widget key'),
                  onVisibilityChanged: (visibilityInfo) {
                    _sendEventToGetEmail(visibilityInfo, _bloc);
                  },
                  child: GeneratedEmailWidget(
                    widget.context,
                    child: Text(
                      _getEmail(_bloc.state),
                      style: TextStyle(
                        color: Theme.of(widget.context).primaryColor,
                      ),
                    ),
                  ),
                ),
                CustomSizeBox(),
                Text(
                  'Email',
                  style: Theme.of(widget.context).textTheme.headline2,
                ),
                CustomSizeBox(),
                CustomTextFormField(
                  controller: emailEditingController,
                  text: "Type your email",
                  textInputType: TextInputType.emailAddress,
                  validationMessage:
                      _applyFoldingLogic(_bloc.state.emailValidationResponse),
                  onChange: (value) {
                    _bloc.add(
                      ContactInfoIndividualEvent.emailIsEntered(value),
                    );
                  },
                ),
                CustomSizeBox(),
                Text(
                  'Password',
                  style: Theme.of(widget.context).textTheme.headline2,
                ),
                CustomSizeBox(),
                CustomTextFormField(
                  controller: passwordEditingController,
                  text: 'Type your password',
                  isSecure: !state.isShowingPassword,
                  suffix: state.isShowingPassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  suffixFunction: () {
                    _bloc.add(const ContactInfoIndividualEvent
                        .showPassordIsPressed());
                  },
                  textInputType: TextInputType.text,
                  validationMessage: _applyFoldingLogic(
                    _bloc.state.passwordValidationResponse,
                  ),
                  onChange: (password) {
                    _bloc.add(
                      ContactInfoIndividualEvent.passwordIsEntered(password),
                    );
                  },
                ),
                CustomSizeBox(),
                Text(
                  'Password confirmation',
                  style: Theme.of(widget.context).textTheme.headline2,
                ),
                CustomSizeBox(),
                CustomTextFormField(
                  validationMessage: _applyFoldingLogic(
                      _bloc.state.confirmedPassowordValidationResponse),
                  controller: confirmedEditingController,
                  text: 'Confirm your password',
                  isSecure: !state.isShowingConfirmedPassword,
                  suffix: state.isShowingConfirmedPassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  suffixFunction: () {
                    _bloc.add(
                      const ContactInfoIndividualEvent
                          .showConfirmedPassordIsPressed(),
                    );
                  },
                  textInputType: TextInputType.text,
                  onChange: (confirmPassword) {
                    _bloc.add(
                      ContactInfoIndividualEvent.confirmedPasswordIsEntered(
                        passwordEditingController.text,
                        confirmPassword,
                      ),
                    );
                  },
                ),
                CustomSizeBox(height: 40),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      if (state.componentIsValid) {
                        InputStash.email = emailEditingController.text;
                        InputStash.passwordConfirmation =
                            passwordEditingController.text;
                        _bloc.add(
                          ContactInfoIndividualEvent.sendCodeToEmailResponse(
                            emailEditingController.text,
                          ),
                        );
                        _onNextEvent(_bloc, context.read<SignUpBloc>());
                      }
                    },
                    child: CustomButton(
                      context: context,
                      isActive: _bloc.state.componentIsValid,
                      text: 'Next',
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String _getEmail(ContactInfoIndividualState state) {
    return state.optionOfFailureOrSuccessGeneratedEmail.fold(
      () => 'loading',
      (a) => a.fold(
        (l) => l.toString(),
        (r) {
          InputStash.generatedEmail = r.email;
          return r.email;
        },
      ),
    );
  }

  void _sendEventToGetEmail(
      VisibilityInfo info, ContactInfoIndividualBloc bloc) {
    final shouldSendEmail = (info.visibleBounds.size.width > 0) ? true : false;
    if (shouldSendEmail) {
      bloc.add(
        ContactInfoIndividualEvent.requestProvidedEmail(
          InputStash.firstName,
          InputStash.lastName,
        ),
      );
    }
  }

  String? _applyFoldingLogic(dartZ.Either<String, dartZ.Unit> value) {
    return value.fold(
      (l) => l,
      (r) => null,
    );
  }
}

void _onNextEvent(
  ContactInfoIndividualBloc contactInfoBloc,
  SignUpBloc signupBloc,
) {
  contactInfoBloc.add(const ContactInfoIndividualEvent.nextIsPressed());

  final componentIsValid = contactInfoBloc.state.componentIsValid;

  if (componentIsValid) {
    signupBloc.add(const SignUpEvent.nextIsTapped());
  }
}
