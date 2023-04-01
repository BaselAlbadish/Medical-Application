import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/presentation/routes/routes.dart';
import '../../../../forgotPassword/presentation/widgets/customShowSnackBar.dart';
import '../../blocs/organization/organization_bloc.dart';
import '../core/cusom_button.dart';
import '../core/custom_sizeBox.dart';
import 'add_photo_organization_widget.dart';

class VerificationOrganizationWidget extends StatefulWidget {
  VerificationOrganizationWidget(this.context, {Key? key}) : super(key: key);
  BuildContext context;

  @override
  State<VerificationOrganizationWidget> createState() =>
      _VerificationOrganizationWidgetState();
}

class _VerificationOrganizationWidgetState
    extends State<VerificationOrganizationWidget> {
  final codeEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _bloc = context.read<OrganizationBloc>();
    return SingleChildScrollView(
      child: BlocConsumer<OrganizationBloc, OrganizationState>(
        listenWhen: (previous, current) {
          return previous.successSignUp != current.successSignUp ||
              previous.successConfirmEmail != current.successConfirmEmail;
        },
        listener: (context, state) {
          state.successConfirmEmail.fold(
            () => null,
            (a) => a.fold(
              (l) => CustomShowSnakBar(context: context, text: l.toString()),
              (r) {
                context
                    .read<OrganizationBloc>()
                    .add(const OrganizationEvent.signUpOrganization());
                navigateToRemove(
                  context: context,
                  Widget: BlocProvider.value(
                    value: BlocProvider.of<OrganizationBloc>(context),
                    child: SignUpOrganizationAddPhoto(context),
                  ),
                );
              },
            ),
          );
          state.successSignUp.fold(
            () => null,
            (a) => a.fold(
              (l) => CustomShowSnakBar(context: context, text: l.toString()),
              (r) => CustomShowSnakBar(
                  context: context, text: r["message"].toString()),
            ),
          );
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'We sent the code to your phone number',
                style: TextStyle(
                  color: Theme.of(widget.context).indicatorColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.6,
                ),
              ),
              CustomSizeBox(),
              Text(
                'Enter the verification code please',
                style: Theme.of(widget.context).textTheme.subtitle1,
              ),
              CustomSizeBox(),
              SizedBox(
                width: 210,
                child: TextField(
                  maxLength: 6,
                  controller: codeEmailController,
                  style: TextStyle(
                    color: Theme.of(widget.context).indicatorColor,
                  ),
                  onChanged: (value) {
                    _bloc.add(
                        OrganizationEvent.componentIsValidCodeNumber(value));
                  },
                  decoration: InputDecoration(
                    hintText: 'Code',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Theme.of(widget.context).indicatorColor,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              CustomSizeBox(),
              CustomSizeBox(height: 190),
              Center(
                child: state.loading
                    ? const CircularProgressIndicator()
                    : InkWell(
                        child: CustomButton(
                          context: context,
                          isActive: _bloc.state.componentIsValidCodeNumber,
                          text: 'Submit',
                        ),
                        onTap: () {
                          if (_bloc.state.componentIsValidCodeNumber) {
                            _bloc.add(
                              OrganizationEvent.confirmEmailCode(
                                codeEmailController.text,
                              ),
                            );
                          }
                        },
                      ),
              )
            ],
          );
        },
      ),
    );
  }
}
