import 'package:flutter/material.dart';

class SignupStepper extends StatelessWidget {
  final int index;
  final List stepsContent;
  final Function(int)? onStepTapped;
  final Function()? onStepContinue;
  final Function()? onStepCancel;
  final BuildContext context;
  final Widget Function(BuildContext, ControlsDetails)? controlsBuilder;


  const SignupStepper(
      {
    Key? key,
    required this.context,
    required this.index,
    required this.stepsContent,
    required this.onStepTapped,
    required this.onStepCancel,
    required this.onStepContinue,
    required this.controlsBuilder,
  })
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Theme.of(context).scaffoldBackgroundColor,
        colorScheme: ColorScheme.light(
            primary: Theme.of(context).primaryColor,
            ),
      ),

      child: Stepper(
        currentStep: index,
        type: StepperType.horizontal,
        steps: _buildStepList(index),
        elevation: 0,
        physics: const RangeMaintainingScrollPhysics(),
        onStepTapped: onStepTapped,
        onStepContinue: onStepContinue,
        onStepCancel: onStepCancel,
        controlsBuilder: controlsBuilder,
      ),
    );
  }

  List<Step> _buildStepList(int currentIndex) {
    return <Step>[
      Step(
        title: Text(
          'who',
          style: Theme.of(context).textTheme.headline6,
          ),
        content: stepsContent[0],
        state: _getState(0, currentIndex),
        isActive: _isActive(0, currentIndex),
      ),
      Step(
        title: Text(
          'Basic Info',
          style: Theme.of(context).textTheme.headline6,
        ),
        content: stepsContent[1],
          state: _getState(1, currentIndex),
          isActive: _isActive(1, currentIndex),

          ),
      Step(
        title: Text(
          'Contact Info',
          style: Theme.of(context).textTheme.headline6,
        ),
          content: stepsContent[2],
          state: _getState(2, currentIndex),
          isActive: _isActive(2, currentIndex),
          ),
      Step(
          title: Text(
            'done',
          style: Theme.of(context).textTheme.headline6,
            ),
          content: stepsContent[3],
          state: _getState(3, currentIndex),
          isActive: _isActive(3, currentIndex),
          ),

    ];
  }

  StepState _getState(int stepIndex, int currentIndex) {
    if(currentIndex > stepIndex) {
      return StepState.complete;
    } else if (stepIndex == currentIndex) {
      return StepState.editing;
    } else if (stepIndex > currentIndex) {
      return StepState.indexed;
    } else {
      return StepState.error;
    }
  }

  bool _isActive(int stepIndex, int currentIndex) {
    return stepIndex == currentIndex;
  }
}
