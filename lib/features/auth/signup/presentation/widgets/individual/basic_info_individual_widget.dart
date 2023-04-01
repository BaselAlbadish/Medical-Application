import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart'
    as individual;
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/individual/basic_info/basic_info_individual_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/constants.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/cusom_button.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/custom_typeahead.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/danger_text.dart';

import '../../utility/input_stash.dart';
import '../core/customTextFormField.dart';

class BasicInfoIndividualWidget extends StatefulWidget {
  BasicInfoIndividualWidget(
    this.context, {
    Key? key,
  }) : super(key: key);
  final BuildContext context;

  @override
  State<BasicInfoIndividualWidget> createState() =>
      _BasicInfoIndividualWidgetState();
}

class _BasicInfoIndividualWidgetState extends State<BasicInfoIndividualWidget> {
  final _firstNameEditingController = TextEditingController();

  final _lastNameEditingController = TextEditingController();

  final _locationTypeAheadController = TextEditingController();

  final _professionTypeAheadController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final SignUpBloc _signupBloc = context.read<SignUpBloc>();
    final BasicInfoIndividualBloc _bloc =
        context.read<BasicInfoIndividualBloc>();

    return BlocConsumer<BasicInfoIndividualBloc, BasicInfoIndividualState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          autovalidateMode: state.isShowingErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Dangertext(
                    text: kAcceptedMemberstext,
                    context: this.widget.context,
                  ),
                  onTap: () {
                    _firstNameEditingController.text = "yhaea";
                    _lastNameEditingController.text = "shamas";
                    
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'First name',
                  style: Theme.of(widget.context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: _firstNameEditingController,
                  text: 'type your first name',
                  onChange: (firstName) {
                    context.read<BasicInfoIndividualBloc>().add(
                          BasicInfoIndividualEvent.firstNameEntered(firstName),
                        );
                    InputStash.firstName = firstName;
                  },
                  validation: (firstName) {
                    return context
                        .read<BasicInfoIndividualBloc>()
                        .state
                        .firstNameValidationResponse
                        .fold(
                          (l) => l,
                          (_) => null,
                        );
                  },
                  isSecure: false,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Last name',
                  style: Theme.of(widget.context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  textInputType: TextInputType.text,
                  controller: _lastNameEditingController,
                  validation: (lastName) {
                    return context
                        .read<BasicInfoIndividualBloc>()
                        .state
                        .lastNameValidationResponse
                        .fold(
                          (l) => l,
                          (_) => null,
                        );
                  },
                  onChange: (lastName) {
                    context.read<BasicInfoIndividualBloc>().add(
                          BasicInfoIndividualEvent.lastNameEntered(lastName),
                        );
                    InputStash.lastName = lastName;
                  },
                  iconData: null,
                  isSecure: false,
                  text: 'type your last name',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTypeAhead<individual.Location>(
                  controller: _locationTypeAheadController,
                  onSelected: (item) {
                    InputStash.primaryLocation = item;
                    _locationTypeAheadController.text = item.country.name;
                    _bloc.add(
                      BasicInfoIndividualEvent.primaryLocationSelected(item),
                    );
                  },
                  context: widget.context,
                  hintText: "Choose your City, Country",
                  label: 'Primary Location',
                  suggestionsCallback: (pattern) {
                    return _bloc.fetchLocations(pattern);
                  },
                  optionsBuilder: (pattern, item) {
                    return ListTile(
                      title: Text(item.country.name.toString()),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTypeAhead<individual.Profession>(
                  controller: _professionTypeAheadController,
                  onSelected: (item) {
                    InputStash.primaryProfession = item;
                    _professionTypeAheadController.text = item.name.toString();
                    _bloc.add(
                      BasicInfoIndividualEvent.primaryProfessionSelected(item),
                    );
                  },
                  context: widget.context,
                  hintText: "Choose your profession",
                  label: 'Primary Profession',
                  suggestionsCallback: (pattern) {
                    return _bloc.fetchProfession(pattern);
                  },
                  optionsBuilder: (pattern, item) {
                    return ListTile(
                      title: Text(item.name),
                    );
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: InkWell(
                    child: CustomButton(
                      context: context,
                      isActive: context
                          .read<BasicInfoIndividualBloc>()
                          .state
                          .componentIsValid, // check if next is Active
                      text: 'Next',
                    ),
                    onTap: () {
                      _bloc.add(const BasicInfoIndividualEvent.nextIsPressed());

                      if (state.componentIsValid) {
                        InputStash.firstName = _firstNameEditingController.text;
                        InputStash.lastName = _lastNameEditingController.text;
                        InputStash.primaryLocation = state.selectedLocation;
                        InputStash.primaryProfession = state.selectedProfession;

                        _signupBloc.add(const SignUpEvent.nextIsTapped());
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
