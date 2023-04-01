import 'dart:async';

import 'package:dartz/dartz.dart' as dartZ;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart'
    as individual;
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/individual/education_bloc/education_bloc_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/suggestions_filter.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/custom_dropdown.dart';

import '../../../../../../core/error/failures.dart';
import '../../utility/input_stash.dart';
import '../core/cusom_button.dart';
import '../core/custom_typeahead.dart';

class IndividualEducationWidget extends StatefulWidget {
  IndividualEducationWidget(this.context, {Key? key}) : super(key: key);

  final BuildContext context;

  @override
  State<IndividualEducationWidget> createState() =>
      _IndividualEducationWidgetState();
}

class _IndividualEducationWidgetState extends State<IndividualEducationWidget> {
  final universityTypeAheadController = TextEditingController();

  final degreeTypeAheadController = TextEditingController();

  final majorTypeAheadController = TextEditingController();

  final minorTypeAheadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _bloc = context.read<EducationBloc>();
    fillFieldsData();

    return SingleChildScrollView(
      child: BlocConsumer<EducationBloc, EducationState>(
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
                  CustomTypeAhead<individual.University>(
                    controller: universityTypeAheadController,
                    onSelected: (item) {
                      universityTypeAheadController.text = item.name.toString();
                      InputStash.university = item;
                      _bloc.add(
                        EducationEvent.universityIsSelected(item.id!),
                      );
                    },
                    context: widget.context,
                    hintText: "Choose your University",
                    label: 'University',
                    suggestionsCallback: (pattern) {
                      return _bloc.fetchUniversities(pattern);
                    },
                    optionsBuilder: (pattern, item) {
                      return ListTile(
                        title: Text(item.name.toString()),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTypeAhead<individual.Degree>(
                    controller: degreeTypeAheadController,
                    onSelected: (item) {
                      degreeTypeAheadController.text = item.name.toString();
                      InputStash.degree = item;
                    },
                    context: widget.context,
                    hintText: "Choose your Degree",
                    label: 'Degree',
                    suggestionsCallback: (pattern) {
                      if (InputStash.university == null) {
                        return [];
                      } else {
                        return _bloc.fetchDegrees(
                            pattern, InputStash.university!.id!);
                      }
                    },
                    optionsBuilder: (pattern, item) {
                      return ListTile(
                        title: Text(item.name.toString()),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTypeAhead<individual.Major>(
                    controller: majorTypeAheadController,
                    onSelected: (item) {
                      majorTypeAheadController.text = item.name.toString();
                      InputStash.major = item;
                    },
                    context: widget.context,
                    hintText: "Choose your major",
                    label: 'Major',
                    suggestionsCallback: (pattern) {
                      return _bloc.fetchMajors(pattern);
                    },
                    optionsBuilder: (pattern, item) {
                      return ListTile(
                        title: Text(item.name.toString()),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTypeAhead<individual.Minor>(
                    controller: minorTypeAheadController,
                    onSelected: (item) {
                      minorTypeAheadController.text = item.name.toString();
                      InputStash.minor = item;
                    },
                    context: widget.context,
                    hintText: "Choose your minor",
                    label: 'Minor',
                    suggestionsCallback: (pattern) {
                      return _bloc.fetchMinors(pattern);
                    },
                    optionsBuilder: (pattern, item) {
                      return ListTile(
                        title: Text(item.name.toString()),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Start date',
                    style: Theme.of(this.widget.context).textTheme.headline2,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: CustomDropDown<String>(
                          this.widget.context,
                          isEnabled: true,
                          callBack: (month) {
                            InputStash.startStudyingMonth = month;
                          },
                          items: _generateMonths(),
                          label: InputStash.startStudyingMonth == ''
                              ? 'Month'
                              : InputStash.startStudyingMonth!,
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
                            InputStash.startStudyingYear = year;
                          },
                          items: _generateYears(),
                          label: InputStash.startStudyingYear == ''
                              ? 'Year'
                              : InputStash.startStudyingYear!,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'End data (Expected date)',
                    style: Theme.of(widget.context).textTheme.headline2,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: CustomDropDown<String>(
                          this.widget.context,
                          callBack: (month) {
                            InputStash.endStudyingMonth = month;
                          },
                          isEnabled: true,
                          items: _generateMonths(),
                          label: InputStash.endStudyingMonth == ''
                              ? 'Month'
                              : InputStash.endStudyingMonth!,
                        ),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Expanded(
                        child: CustomDropDown<String>(
                          widget.context,
                          isEnabled: true,
                          callBack: (year) {
                            InputStash.endStudyingYear = year;
                          },
                          items: _generateYears(),
                          label: InputStash.endStudyingYear == ''
                              ? 'Year'
                              : InputStash.endStudyingYear!,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<EducationBloc>()
                          .add(const EducationEvent.nextIsPressed());

                      if (context
                          .read<EducationBloc>()
                          .state
                          .componentIsValid) {
                        context
                            .read<SignUpBloc>()
                            .add(const SignUpEvent.nextIsTapped());
                      }
                    },
                    child: Center(
                      child: CustomButton(
                        context: context,
                        isActive: context
                            .read<EducationBloc>()
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
      ),
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
      'September',
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

  void fillFieldsData() {
    InputStash.university != null
        ? universityTypeAheadController.text =
            InputStash.university!.name.toString()
        : null;

    InputStash.degree != null
        ? degreeTypeAheadController.text = InputStash.degree!.name.toString()
        : null;

    InputStash.minor != null
        ? minorTypeAheadController.text = InputStash.minor!.name.toString()
        : null;

    InputStash.major != null
        ? majorTypeAheadController.text = InputStash.major!.name.toString()
        : null;
  }
}
