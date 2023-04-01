part of 'general_user_bloc.dart';

@immutable
abstract class GeneralUserEvent {}

class OnOrganizationOrIndividualSelected extends GeneralUserEvent {
  bool isIndividual;
  OnOrganizationOrIndividualSelected({required this.isIndividual});
}
class OnAcceptConditionTapped extends GeneralUserEvent {
  final bool? value;
  OnAcceptConditionTapped({
    required this.value,
  });
}

class OnNextTapped extends GeneralUserEvent {}

class OnSignInTapped extends GeneralUserEvent {}
