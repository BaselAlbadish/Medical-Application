import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';
import 'package:mdcin_ca/features/auth/signup/domain/repositories/individual_repository.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/utility/input_stash.dart';

import '../../../domain/repositories/individual_repository.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IndividualRepository individualRepository;
  SignUpBloc(
    this.individualRepository,
  ) : super(SignUpState.initial()) {
    on<_IndividualIsSelected>(_onIndividualIsSelected);
    on<_SignInPressed>(_onSignInPressed);
    on<_NextIsTapped>(_onNextIsTapped);
    on<_PrevIsTapped>(_onPrevIsTapped);
    on<_NextInOrganizationTapped>(_onNextInOrganizationTapped);
    on<_PrevIsOrganizationTapped>(_onPrevIsOrganizationTapped);
    on<_ComponentIsValidCodeNumber>(_onComponentIsValidCodeNumber);
    on<_ConfirmEmailCode>(_onConfirmEmailCode);
  }

  void _onIndividualIsSelected(_IndividualIsSelected event, Emitter emit) {
    bool isCreatingIndividualAccount;
    if (event.value == false || event.value == null) {
      isCreatingIndividualAccount = false;
    } else {
      isCreatingIndividualAccount = true;
    }
    InputStash.isIndividualAccount = isCreatingIndividualAccount;
    emit(state.copyWith(
      creatingIndividualAccount: isCreatingIndividualAccount,
    ));
  }

  void _onSignInPressed(_SignInPressed event, Emitter emit) {}
  void _onNextIsTapped(_NextIsTapped event, Emitter emit) async {
    print("index input stach =>${InputStash.index}");
    int index = state.stepIndex;
    InputStash.index = index;
    int indexPageView = state.indexPageView;

    if (index == 1 && state.creatingIndividualAccount) {
      bool studentIsSelected =
          InputStash.primaryProfession!.name.toString().toLowerCase() ==
              'student';

      emit(state.copyWith(
        stepIndex: index,
        isStudent: studentIsSelected,
      ));
    }

    if (index == 3) {
      if (indexPageView < 2) {
        emit(state.copyWith(indexPageView: indexPageView + 1));
      } else {
        return;
      }
    } else {
      index++;
      InputStash.index++;
      emit(state.copyWith(stepIndex: index));
    }
  }

  void _onPrevIsTapped(_PrevIsTapped event, Emitter emit) {
    int index = state.stepIndex;
    InputStash.index = index;
    int indexPageView = state.indexPageView;

    if (index <= 0) {
      return;
    } else {
      if (indexPageView > 0) {
        emit(state.copyWith(indexPageView: indexPageView - 1));
      } else {
        index--;
        InputStash.index--;
        emit(state.copyWith(stepIndex: index));
      }
    }
  }

  _onNextInOrganizationTapped(_NextInOrganizationTapped event, Emitter emit) {
    int newIndex = state.stepIndex + 1;
    emit(state.copyWith(stepIndex: newIndex));
  }

  _onPrevIsOrganizationTapped(_PrevIsOrganizationTapped event, Emitter emit) {
    int newIndex = state.stepIndex - 1;
    emit(state.copyWith(stepIndex: newIndex));
  }

  //event verification by phone number
  // void _onVerifyPhoneNumberByCode(
  //     _VerifyPhoneNumberByCode event, Emitter emit) async {
  //   final result = await individualRepository.verifyEmailByCode(
  //     InputStash.phoneNumber,
  //     event.code,
  //   );

  // }

  _onComponentIsValidCodeNumber(
      _ComponentIsValidCodeNumber event, Emitter emit) {
    if (event.numberLength.length == 6) {
      emit(state.copyWith(componentIsValidCodeNumber: true));
    } else {
      emit(state.copyWith(componentIsValidCodeNumber: false));
    }
  }

  _onConfirmEmailCode(_ConfirmEmailCode evnet, Emitter emit) async {
    emit(state.copyWith(loading: true));
    var result = await individualRepository.verifyEmailByCode(
        InputStash.hashCodeEmail, evnet.code);
    if (result.isRight()) {
      emit(
          state.copyWith(resultCodeVerification: some(result), loading: false));
    } else {}
  }

  // signUpIndividual() {
  //   Individual(
  //     firsName: InputStash.firstName,
  //     lastName: InputStash.lastName,
  //     accountStatus: "active",
  //     phoneNumber: InputStash.,
  //     realPhoneNumber: realPhoneNumber,
  //     userName: userName,
  //     passWord: passWord,
  //     email: email,
  //     addressId: addressId,
  //     primaryProfession: primaryProfession,
  //     universityName: universityName,
  //     degreeName: degreeName,
  //     majorName: majorName,
  //     minorName: minorName,
  //     startDate: startDate,
  //     endDate: endDate,
  //   );
  // }
}
