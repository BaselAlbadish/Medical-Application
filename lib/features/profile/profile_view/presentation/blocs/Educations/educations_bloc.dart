import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'educations_event.dart';
part 'educations_state.dart';

class EducationsBloc extends Bloc<EducationsEvent, EducationsState> {
  EducationsBloc() : super(EducationsInitial()) {
    on<EducationsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
