part of 'basic_info_bloc.dart';

@freezed
abstract class BasicInfoState with _$BasicInfoState {
  const factory BasicInfoState({
    required BasicInfo basicInfo,
    required String firstNameErrorMessage,
    required String lastNameErrorMessage,
    required String professionErrorMessage,
    required String locationErrorMessage,
    required String genderErrorMessage,
    required Option<Either<Failure, String>> updateBasicInfoResponse,
  }) = _BasicInfoState;

  factory BasicInfoState.initial(BasicInfo basicInfo) => BasicInfoState(
        basicInfo: basicInfo,
        updateBasicInfoResponse: none(),
        firstNameErrorMessage: "",
        lastNameErrorMessage: "",
        professionErrorMessage: "",
        locationErrorMessage: "",
        genderErrorMessage: "",
      );
}
