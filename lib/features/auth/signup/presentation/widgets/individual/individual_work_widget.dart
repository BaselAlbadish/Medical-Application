import 'dart:async';
import 'package:dartz/dartz.dart' as dartZ;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_validator.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/customTextFormField.dart';

import '../../../../../../core/error/failures.dart';
import '../../../domain/entities/individual/individual_model.dart'
    as individual;
import '../../blocs/individual/work_bloc/work_bloc.dart';
import '../../blocs/sign_up_bloc/sign_up_bloc.dart';
import '../../utility/input_stash.dart';
import '../../utility/suggestions_filter.dart';
import '../core/cusom_button.dart';
import '../core/custom_dropdown.dart';
import '../core/custom_typeahead.dart';

class IndividualWorkWidget extends StatefulWidget {
  IndividualWorkWidget(this.context, {Key? key}) : super(key: key);

  final BuildContext context;

  @override
  State<IndividualWorkWidget> createState() => _IndividualWorkWidgetState();
}

class _IndividualWorkWidgetState extends State<IndividualWorkWidget> {
  final TextEditingController companyNameController = TextEditingController();

  final TextEditingController positionController = TextEditingController();

  final TextEditingController locationTypeAheadController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _bloc = context.read<WorkBloc>();
    return BlocConsumer<WorkBloc, WorkState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Form(
            autovalidateMode: state.isShowingErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Company name',
                  style: Theme.of(this.widget.context).textTheme.headline2,
                ),
                const SizedBox(height: 10),
                CustomTextFormField(
                  validation: (value) =>
                      InputValidator.validateCompanyName(value),
                  onChange: (value) {
                    context
                        .read<WorkBloc>()
                        .add(WorkEvent.onCompanyNameEntered(value));
                    InputStash.companyName = value;
                  },
                  controller: companyNameController,
                  text: 'Type your company name',
                  textInputType: TextInputType.text,
                ),
                Text(
                  'Position',
                  style: Theme.of(this.widget.context).textTheme.headline2,
                ),
                const SizedBox(height: 10),
                CustomTextFormField(
                  validation: (value) => InputValidator.validatePosition(value),
                  onChange: (position) {
                    context
                        .read<WorkBloc>()
                        .add(WorkEvent.onPositionEntered(position));
                    InputStash.position = position;
                  },
                  controller: positionController,
                  text: 'Type your position',
                  textInputType: TextInputType.text,
                ),
                CustomTypeAhead<individual.Location>(
                  controller: locationTypeAheadController,
                  onSelected: (item) {
                    InputStash.primaryWorkLocation = item;
                    locationTypeAheadController.text = item.country.name;
                  },
                  context: this.widget.context,
                  hintText: "Choose your City, Country",
                  label: 'Location',
                  suggestionsCallback: (pattern) {
                    return _bloc.fetchLocations(pattern);
                  },
                  optionsBuilder: (pattern, item) {
                    return ListTile(
                      title: Text(item.country.name.toString()),
                    );
                  },
                ),
                const SizedBox(height: 10),
                Text(
                  'Start date',
                  style: Theme.of(this.widget.context).textTheme.headline2,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: CustomDropDown<String>(
                        this.widget.context,
                        isEnabled: true,
                        callBack: (month) {
                          InputStash.startWorkingMonth = month;
                        },
                        items: _generateMonths(),
                        label: InputStash.startWorkingMonth == ''
                            ? 'Month'
                            : InputStash.startWorkingMonth!,
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: CustomDropDown<String>(
                        this.widget.context,
                        isEnabled: true,
                        callBack: (year) {
                          InputStash.startWorkingYear = year;
                        },
                        items: _generateYears(),
                        label: InputStash.startWorkingYear == ''
                            ? 'Year'
                            : InputStash.startWorkingYear!,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'End data (Expected date)',
                  style: Theme.of(this.widget.context).textTheme.headline2,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: CustomDropDown<String>(
                        this.widget.context,
                        isEnabled: !state.isStillWorkingHere,
                        callBack: (month) {
                          InputStash.endWorkingMonth = month;
                        },
                        items: _generateMonths(),
                        label: InputStash.endWorkingMonth == ''
                            ? 'Month'
                            : InputStash.endWorkingMonth!,
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: CustomDropDown<String>(
                        this.widget.context,
                        isEnabled: !state.isStillWorkingHere,
                        callBack: (year) {
                          InputStash.endWorkingYear = year;
                        },
                        items: _generateYears(),
                        label: InputStash.endWorkingYear == ''
                            ? 'Year'
                            : InputStash.endWorkingYear!,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith((state) {
                          if (state.contains(MaterialState.selected)) {
                            return Theme.of(this.widget.context).primaryColor;
                          } else {
                            return Theme.of(this.widget.context).hintColor;
                          }
                        }),
                        value: state.isStillWorkingHere,
                        onChanged: (status) {
                          InputStash.isStillWorking =
                              !InputStash.isStillWorking;
                          context
                              .read<WorkBloc>()
                              .add(const WorkEvent.onStillWorkingHere());
                        }),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'I\'m still working here',
                      style: TextStyle(
                        color: Theme.of(this.widget.context).hintColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<WorkBloc>()
                        .add(const WorkEvent.onNextTapped());

                    if (context.read<WorkBloc>().state.componentIsValid) {
                      context
                          .read<SignUpBloc>()
                          .add(const SignUpEvent.nextIsTapped());
                    }
                  },
                  child: Center(
                    child: CustomButton(
                      context: context,
                      isActive: context
                          .read<WorkBloc>()
                          .state
                          .componentIsValid, // check if next is Active
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

  FutureOr<Iterable<Object>> _optionsBuilder(
      dartZ.Either<Failure, List<Object>>? values, TextEditingValue pattern) {
    if (values == null) {
      return ['fetching vlaues...'];
    }

    return values.fold(
      (l) => ['an error occured!'],
      (r) {
        final result =
            SuggestionsFilter.getSuggestions<Object>(pattern.text, r);
        return result.map((e) => e);
      },
    );
  }

  List<String> _generateMonths() {
    DateFormat formatter = DateFormat('MMMM');
    List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'Septemper',
      'October',
      'November',
      'December'
    ];
    return months;
  }

  List<String> _generateYears() {
    DateFormat formatter = DateFormat('yyyy');

    return List<String>.generate(
      30,
      (index) => formatter.format(
        DateTime.utc(
          DateTime.now().year - 30 + index,
        ).add(const Duration(days: 366)),
      ),
    );
  }
}
