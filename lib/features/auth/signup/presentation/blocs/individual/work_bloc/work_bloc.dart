import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/features/auth/signup/domain/repositories/individual_repository.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_validator.dart';

import '../../../../../../../core/error/failures.dart';
import '../../../../domain/entities/individual/individual_model.dart';
import '../../../utility/input_stash.dart';

part 'work_event.dart';
part 'work_state.dart';
part 'work_bloc.freezed.dart';

// const factory WorkEvent.onStillWorkingHere() = _OnStillWorkingHere;
// const factory WorkEvent.onNextTapped() = _OnNextTapped;

class WorkBloc extends Bloc<WorkEvent, WorkState> {
  final IndividualRepository repository;
  WorkBloc(this.repository) : super(WorkState.initial()) {
    _getPrimaryLocations();
    on<_OnStillWorkingHere>(_onStillWorkingHere);
    on<_OnNextTapped>(_onNextIsTapped);
    on<_OnCompanyNameEntered>(_onCompanyNameEntered);
    on<_OnPositionEntered>(_onPositionEntered);
  }

  void _onStillWorkingHere(_OnStillWorkingHere event, Emitter emit) {
    emit(state.copyWith(
      isStillWorkingHere: !state.isStillWorkingHere,
    ));
  }

  void _onNextIsTapped(_OnNextTapped event, Emitter emit) {
    emit(state.copyWith(
      isShowingErrorMessages: true,
    ));
  }

  void _onCompanyNameEntered(_OnCompanyNameEntered event, Emitter emit) {
    final newState = state.copyWith(
      companyName: event.name,
    );
    final isValidComponent = _componentIsValid(newState);
    emit(newState.copyWith(
      componentIsValid: isValidComponent,
      companyName: event.name,
    ));
  }

  void _onPositionEntered(_OnPositionEntered event, Emitter emit) {
    final newState = state.copyWith(
      companyName: event.position,
    );

    final isValidComponent = _componentIsValid(newState);
    emit(newState.copyWith(
      componentIsValid: isValidComponent,
      positionName: event.position,
    ));
  }

  void _getPrimaryLocations() async {
    InputStash.repositoryLocations = await repository.getLocations();
  }

  bool _componentIsValid(WorkState state) {
    final isValidCompanyName =
        InputValidator.validateCompanyName(state.companyName);

    final isValidPosition = InputValidator.validatePosition(state.positionName);

    final componentIsValid =
        isValidCompanyName == isValidPosition && isValidCompanyName == '';

    if (componentIsValid) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<Location>> fetchLocations(String query) {
    if (InputStash.repositoryLocations != null) {
      return Future.value(InputStash.repositoryLocations!
          .getOrElse(() => List.empty())
          .where((element) =>
              element.country.name.toLowerCase().contains(query.toLowerCase()))
          .toList());
    } else {}
    return repository
        .getLocations()
        .then((value) => value.getOrElse(() => List.empty()))
        .then(
      (value) {
        InputStash.repositoryLocations = right(value);
        return value;
      },
    );
  }
}
