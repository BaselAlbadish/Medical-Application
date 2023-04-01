import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart'
    as individual;
import 'package:mdcin_ca/features/auth/signup/domain/entities/organization/organization_model.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/organization/organization_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/constants.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_stash.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/cusom_button.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/customTextFormField.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/custom_sizeBox.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/custom_typeahead.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/danger_text.dart';

import '../../../../../../core/presentation/widgets/customText.dart';
import '../../../../../../core/themes/light_theme.dart';

class BasicInfoOrganizationWidget extends StatefulWidget {
  BuildContext context;
  BasicInfoOrganizationWidget(this.context);

  @override
  State<BasicInfoOrganizationWidget> createState() =>
      _BasicInfoOrganizationWidgetState();
}

class _BasicInfoOrganizationWidgetState
    extends State<BasicInfoOrganizationWidget> {
  final nameController = TextEditingController();
  final webSiteController = TextEditingController();
  final businessTypeAheadController = TextEditingController();
  final locationTypeAheadController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrganizationBloc, OrganizationState>(
      listener: (context, state) {},
      builder: (context, state) {
        final _bloc = context.read<OrganizationBloc>();
        return Column(
          children: [
            InkWell(
              child: Dangertext(
                text: kAcceptedMemberstext,
                context: this.widget.context,
              ),
              onTap: () {
                nameController.text = "yahea";
                webSiteController.text = "yahea@gmail.com";
              },
            ),
            SizedBox(
              height: 24.h,
            ),
            //name
            CustomText(
              text: "Organization Name",
              color: kSecondaryColor,
              fontSize: 16,
            ),
            CustomSizeBox(),
            CustomTextFormField(
              controller: nameController,
              text: "Type organization name",
              textInputType: TextInputType.name,
              onChange: (value) {
                _bloc.add(
                  OrganizationEvent.enterName(value),
                );
              },
              validationMessage: _bloc.state.validateOrganizationName,
            ),
            CustomSizeBox(),
            //name website
            CustomText(
              text: "Organization website",
              color: kSecondaryColor,
              fontSize: 16,
            ),
            CustomSizeBox(),
            CustomTextFormField(
              controller: webSiteController,
              text: "www.parlay.com",
              textInputType: TextInputType.emailAddress,
              onChange: (value) {
                _bloc.add(OrganizationEvent.enterWebSite(value));
              },
              validationMessage: _bloc.state.validateOrganizationWebsite,
            ),
            CustomSizeBox(),
            //auto complete
            CustomTypeAhead<individual.Location>(
              controller: locationTypeAheadController,
              onSelected: (item) {
                locationTypeAheadController.text = item.country.name.toString();
                _bloc.add(
                  OrganizationEvent.enterLocation(item),
                );
              },
              context: widget.context,
              hintText: "Primary location",
              label: 'Primary location',
              suggestionsCallback: (pattern) {
                return _bloc.fetchLocations(pattern);
              },
              optionsBuilder: (pattern, item) {
                return ListTile(
                  title: Text(item.country.name.toString()),
                );
              },
            ),
            CustomSizeBox(height: 25),
            CustomTypeAhead<PrimaryBusiness>(
              controller: businessTypeAheadController,
              onSelected: (item) {
                businessTypeAheadController.text = item.name.toString();
                _bloc.add(
                  OrganizationEvent.enterBusiness(item),
                );
              },
              context: widget.context,
              hintText: "Primary Business",
              label: 'Primary Business',
              suggestionsCallback: (pattern) {
                return _bloc.fetchAllPrimaryBusiness(pattern);
              },
              optionsBuilder: (pattern, item) {
                return ListTile(
                  title: Text(item.name.toString()),
                );
              },
            ),
            CustomSizeBox(height: 35),
            //button submit
            Center(
              child: InkWell(
                child: CustomButton(
                  context: widget.context,
                  isActive:
                      _bloc.state.componentIsValid, // check if next is Active
                  text: 'Next',
                ),
                onTap: () {
                  if (state.componentIsValid) {
                    SystemChannels.textInput.invokeMethod('TextInput.hide');
                    InputStash.index++;
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
