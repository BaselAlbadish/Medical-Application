import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';

part 'profile_model.freezed.dart';

part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel.individualProfile({
    required String? backgroundImageName,
    required String? profileImageName,
    required BasicInfo basicInfo,
    required UserSummary summary,
    required List<Experience> experienceInfo,
    required ContactInfo contactInfo,
    required List<Skill> skillInfo,
    required List<Education> educationInfo,
    required List<Course> courseOrTrainingInfo,
  }) = IndividualProfile;

  const factory ProfileModel.individualProfileState({
    required String? educationStatus,
    required String? basicInfoStatus,
    required String? contactStatus,
    required String? summaryStatus,
    required String? experienceStatus,
    required String? courseOrTrainingStatus,
    required String? skillInfoStatus,
  }) = IndividualProfileState;

  const factory ProfileModel.basicInfo({
    required String? firstName,
    required String? lastName,
    required String? gender,
    required Location? primaryLocation,
    required Profession? primaryProfession,
    required Date? birthDate,
  }) = BasicInfo;

  const factory ProfileModel.date({
    required String? day,
    required String? month,
    required String? year,
  }) = Date;

  const factory ProfileModel.userSummary({
    required String? value,
    int? id,
  }) = UserSummary;

  const factory ProfileModel.experience({
    int? id,
    required bool? stillWorking,
    required String? companyName,
    required Date? startDate,
    required Date? endDate,
    required String? positionName,
    required String? employeeType,
    required Location? location,
  }) = Experience;

  const factory ProfileModel.contactInfo({
    required String? phoneNumber,
    required String? email,
    required String? facebook,
    required String? linkedIn,
    required String? twitter,
  }) = ContactInfo;

  const factory ProfileModel.skill({
    int? id,
    required String? name,
    required String? level,
  }) = Skill;

  const factory ProfileModel.education({
    required String? certificationFileName,
    int? id,
    required String? grade,
    required String? universityName,
    required String? fieldOfStudyName,
    required String? degreeName,
    required String? majorName,
    required String? minerName,
    required Date? startDate,
    required Date? endDate,
  }) = Education;

  const factory ProfileModel.course({
    int? id,
    required String? courseName,
    required String? TeacherName,
    required String? organization,
    required Location? location,
    required Date? startDate,
    required Date? endDate,
  }) = Course;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}

//flutter pub run build_runner build --delete-conflicting-outputs
