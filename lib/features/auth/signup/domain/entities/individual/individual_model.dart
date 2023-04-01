import 'package:freezed_annotation/freezed_annotation.dart';
part 'individual_model.freezed.dart';
part 'individual_model.g.dart';

@freezed
class IndividualModel with _$IndividualModel {
  const factory IndividualModel.individual({
    required String firsName,
    required String lastName,
    required String accountStatus,
    required String phoneNumber,
    required String realPhoneNumber,
    required String userName,
    required String passWord,
    required String email,
    required int addressId,
    required Profession primaryProfession,
    required University universityName,
    required Degree degreeName,
    required Major majorName,
    required Minor minorName,
    required DateTime startDate,
    required DateTime endDate,
  }) = Individual;

  const factory IndividualModel.degree({
    required String name,
    int? id,
  }) = Degree;

  const factory IndividualModel.generatedEmail({
    required String username,
    required String email,
  }) = GeneratedEmail;

  const factory IndividualModel.company({
    required String name,
  }) = Company;

  const factory IndividualModel.teacher({
    required String name,
  }) = Teacher;

  const factory IndividualModel.location({
    int? id,
    @JsonKey(name: 'Country') required Country country,
  }) = Location;

  const factory IndividualModel.major({
    required String name,
    int? id,
  }) = Major;

  const factory IndividualModel.state({
    required String name,
  }) = State;

  const factory IndividualModel.minor({
    required String name,
    int? id,
  }) = Minor;

  const factory IndividualModel.position({
    required String name,
    int? id,
  }) = Position;

  const factory IndividualModel.profession({
    required String name,
    int? id,
  }) = Profession;

  const factory IndividualModel.university({
    required String name,
    int? id,
  }) = University;

  const factory IndividualModel.country({
    required String name,
    required String code,
  }) = Country;

  factory IndividualModel.fromJson(Map<String, dynamic> json) =>
      _$IndividualModelFromJson(json);
}
