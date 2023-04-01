// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'individualProfile':
      return IndividualProfile.fromJson(json);
    case 'individualProfileState':
      return IndividualProfileState.fromJson(json);
    case 'basicInfo':
      return BasicInfo.fromJson(json);
    case 'date':
      return Date.fromJson(json);
    case 'userSummary':
      return UserSummary.fromJson(json);
    case 'experience':
      return Experience.fromJson(json);
    case 'contactInfo':
      return ContactInfo.fromJson(json);
    case 'skill':
      return Skill.fromJson(json);
    case 'education':
      return Education.fromJson(json);
    case 'course':
      return Course.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ProfileModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ProfileModelTearOff {
  const _$ProfileModelTearOff();

  IndividualProfile individualProfile(
      {required String? backgroundImageName,
      required String? profileImageName,
      required BasicInfo basicInfo,
      required UserSummary summary,
      required List<Experience> experienceInfo,
      required ContactInfo contactInfo,
      required List<Skill> skillInfo,
      required List<Education> educationInfo,
      required List<Course> courseOrTrainingInfo}) {
    return IndividualProfile(
      backgroundImageName: backgroundImageName,
      profileImageName: profileImageName,
      basicInfo: basicInfo,
      summary: summary,
      experienceInfo: experienceInfo,
      contactInfo: contactInfo,
      skillInfo: skillInfo,
      educationInfo: educationInfo,
      courseOrTrainingInfo: courseOrTrainingInfo,
    );
  }

  IndividualProfileState individualProfileState(
      {required String? educationStatus,
      required String? basicInfoStatus,
      required String? contactStatus,
      required String? summaryStatus,
      required String? experienceStatus,
      required String? courseOrTrainingStatus,
      required String? skillInfoStatus}) {
    return IndividualProfileState(
      educationStatus: educationStatus,
      basicInfoStatus: basicInfoStatus,
      contactStatus: contactStatus,
      summaryStatus: summaryStatus,
      experienceStatus: experienceStatus,
      courseOrTrainingStatus: courseOrTrainingStatus,
      skillInfoStatus: skillInfoStatus,
    );
  }

  BasicInfo basicInfo(
      {required String? firstName,
      required String? lastName,
      required String? gender,
      required Location? primaryLocation,
      required Profession? primaryProfession,
      required Date? birthDate}) {
    return BasicInfo(
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      primaryLocation: primaryLocation,
      primaryProfession: primaryProfession,
      birthDate: birthDate,
    );
  }

  Date date(
      {required String? day, required String? month, required String? year}) {
    return Date(
      day: day,
      month: month,
      year: year,
    );
  }

  UserSummary userSummary({required String? value, int? id}) {
    return UserSummary(
      value: value,
      id: id,
    );
  }

  Experience experience(
      {int? id,
      required bool? stillWorking,
      required String? companyName,
      required Date? startDate,
      required Date? endDate,
      required String? positionName,
      required String? employeeType,
      required Location? location}) {
    return Experience(
      id: id,
      stillWorking: stillWorking,
      companyName: companyName,
      startDate: startDate,
      endDate: endDate,
      positionName: positionName,
      employeeType: employeeType,
      location: location,
    );
  }

  ContactInfo contactInfo(
      {required String? phoneNumber,
      required String? email,
      required String? facebook,
      required String? linkedIn,
      required String? twitter}) {
    return ContactInfo(
      phoneNumber: phoneNumber,
      email: email,
      facebook: facebook,
      linkedIn: linkedIn,
      twitter: twitter,
    );
  }

  Skill skill({int? id, required String? name, required String? level}) {
    return Skill(
      id: id,
      name: name,
      level: level,
    );
  }

  Education education(
      {required String? certificationFileName,
      int? id,
      required String? grade,
      required String? universityName,
      required String? fieldOfStudyName,
      required String? degreeName,
      required String? majorName,
      required String? minerName,
      required Date? startDate,
      required Date? endDate}) {
    return Education(
      certificationFileName: certificationFileName,
      id: id,
      grade: grade,
      universityName: universityName,
      fieldOfStudyName: fieldOfStudyName,
      degreeName: degreeName,
      majorName: majorName,
      minerName: minerName,
      startDate: startDate,
      endDate: endDate,
    );
  }

  Course course(
      {int? id,
      required String? courseName,
      required String? TeacherName,
      required String? organization,
      required Location? location,
      required Date? startDate,
      required Date? endDate}) {
    return Course(
      id: id,
      courseName: courseName,
      TeacherName: TeacherName,
      organization: organization,
      location: location,
      startDate: startDate,
      endDate: endDate,
    );
  }

  ProfileModel fromJson(Map<String, Object?> json) {
    return ProfileModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileModel = _$ProfileModelTearOff();

/// @nodoc
mixin _$ProfileModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res> implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  final ProfileModel _value;
  // ignore: unused_field
  final $Res Function(ProfileModel) _then;
}

/// @nodoc
abstract class $IndividualProfileCopyWith<$Res> {
  factory $IndividualProfileCopyWith(
          IndividualProfile value, $Res Function(IndividualProfile) then) =
      _$IndividualProfileCopyWithImpl<$Res>;
  $Res call(
      {String? backgroundImageName,
      String? profileImageName,
      BasicInfo basicInfo,
      UserSummary summary,
      List<Experience> experienceInfo,
      ContactInfo contactInfo,
      List<Skill> skillInfo,
      List<Education> educationInfo,
      List<Course> courseOrTrainingInfo});
}

/// @nodoc
class _$IndividualProfileCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res>
    implements $IndividualProfileCopyWith<$Res> {
  _$IndividualProfileCopyWithImpl(
      IndividualProfile _value, $Res Function(IndividualProfile) _then)
      : super(_value, (v) => _then(v as IndividualProfile));

  @override
  IndividualProfile get _value => super._value as IndividualProfile;

  @override
  $Res call({
    Object? backgroundImageName = freezed,
    Object? profileImageName = freezed,
    Object? basicInfo = freezed,
    Object? summary = freezed,
    Object? experienceInfo = freezed,
    Object? contactInfo = freezed,
    Object? skillInfo = freezed,
    Object? educationInfo = freezed,
    Object? courseOrTrainingInfo = freezed,
  }) {
    return _then(IndividualProfile(
      backgroundImageName: backgroundImageName == freezed
          ? _value.backgroundImageName
          : backgroundImageName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageName: profileImageName == freezed
          ? _value.profileImageName
          : profileImageName // ignore: cast_nullable_to_non_nullable
              as String?,
      basicInfo: basicInfo == freezed
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfo,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as UserSummary,
      experienceInfo: experienceInfo == freezed
          ? _value.experienceInfo
          : experienceInfo // ignore: cast_nullable_to_non_nullable
              as List<Experience>,
      contactInfo: contactInfo == freezed
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      skillInfo: skillInfo == freezed
          ? _value.skillInfo
          : skillInfo // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      educationInfo: educationInfo == freezed
          ? _value.educationInfo
          : educationInfo // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      courseOrTrainingInfo: courseOrTrainingInfo == freezed
          ? _value.courseOrTrainingInfo
          : courseOrTrainingInfo // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndividualProfile implements IndividualProfile {
  const _$IndividualProfile(
      {required this.backgroundImageName,
      required this.profileImageName,
      required this.basicInfo,
      required this.summary,
      required this.experienceInfo,
      required this.contactInfo,
      required this.skillInfo,
      required this.educationInfo,
      required this.courseOrTrainingInfo,
      String? $type})
      : $type = $type ?? 'individualProfile';

  factory _$IndividualProfile.fromJson(Map<String, dynamic> json) =>
      _$$IndividualProfileFromJson(json);

  @override
  final String? backgroundImageName;
  @override
  final String? profileImageName;
  @override
  final BasicInfo basicInfo;
  @override
  final UserSummary summary;
  @override
  final List<Experience> experienceInfo;
  @override
  final ContactInfo contactInfo;
  @override
  final List<Skill> skillInfo;
  @override
  final List<Education> educationInfo;
  @override
  final List<Course> courseOrTrainingInfo;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ProfileModel.individualProfile(backgroundImageName: $backgroundImageName, profileImageName: $profileImageName, basicInfo: $basicInfo, summary: $summary, experienceInfo: $experienceInfo, contactInfo: $contactInfo, skillInfo: $skillInfo, educationInfo: $educationInfo, courseOrTrainingInfo: $courseOrTrainingInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IndividualProfile &&
            const DeepCollectionEquality()
                .equals(other.backgroundImageName, backgroundImageName) &&
            const DeepCollectionEquality()
                .equals(other.profileImageName, profileImageName) &&
            const DeepCollectionEquality().equals(other.basicInfo, basicInfo) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality()
                .equals(other.experienceInfo, experienceInfo) &&
            const DeepCollectionEquality()
                .equals(other.contactInfo, contactInfo) &&
            const DeepCollectionEquality().equals(other.skillInfo, skillInfo) &&
            const DeepCollectionEquality()
                .equals(other.educationInfo, educationInfo) &&
            const DeepCollectionEquality()
                .equals(other.courseOrTrainingInfo, courseOrTrainingInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(backgroundImageName),
      const DeepCollectionEquality().hash(profileImageName),
      const DeepCollectionEquality().hash(basicInfo),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(experienceInfo),
      const DeepCollectionEquality().hash(contactInfo),
      const DeepCollectionEquality().hash(skillInfo),
      const DeepCollectionEquality().hash(educationInfo),
      const DeepCollectionEquality().hash(courseOrTrainingInfo));

  @JsonKey(ignore: true)
  @override
  $IndividualProfileCopyWith<IndividualProfile> get copyWith =>
      _$IndividualProfileCopyWithImpl<IndividualProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) {
    return individualProfile(
        backgroundImageName,
        profileImageName,
        this.basicInfo,
        summary,
        experienceInfo,
        this.contactInfo,
        skillInfo,
        educationInfo,
        courseOrTrainingInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) {
    return individualProfile?.call(
        backgroundImageName,
        profileImageName,
        this.basicInfo,
        summary,
        experienceInfo,
        this.contactInfo,
        skillInfo,
        educationInfo,
        courseOrTrainingInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) {
    if (individualProfile != null) {
      return individualProfile(
          backgroundImageName,
          profileImageName,
          this.basicInfo,
          summary,
          experienceInfo,
          this.contactInfo,
          skillInfo,
          educationInfo,
          courseOrTrainingInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) {
    return individualProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) {
    return individualProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) {
    if (individualProfile != null) {
      return individualProfile(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IndividualProfileToJson(this);
  }
}

abstract class IndividualProfile implements ProfileModel {
  const factory IndividualProfile(
      {required String? backgroundImageName,
      required String? profileImageName,
      required BasicInfo basicInfo,
      required UserSummary summary,
      required List<Experience> experienceInfo,
      required ContactInfo contactInfo,
      required List<Skill> skillInfo,
      required List<Education> educationInfo,
      required List<Course> courseOrTrainingInfo}) = _$IndividualProfile;

  factory IndividualProfile.fromJson(Map<String, dynamic> json) =
      _$IndividualProfile.fromJson;

  String? get backgroundImageName;
  String? get profileImageName;
  BasicInfo get basicInfo;
  UserSummary get summary;
  List<Experience> get experienceInfo;
  ContactInfo get contactInfo;
  List<Skill> get skillInfo;
  List<Education> get educationInfo;
  List<Course> get courseOrTrainingInfo;
  @JsonKey(ignore: true)
  $IndividualProfileCopyWith<IndividualProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndividualProfileStateCopyWith<$Res> {
  factory $IndividualProfileStateCopyWith(IndividualProfileState value,
          $Res Function(IndividualProfileState) then) =
      _$IndividualProfileStateCopyWithImpl<$Res>;
  $Res call(
      {String? educationStatus,
      String? basicInfoStatus,
      String? contactStatus,
      String? summaryStatus,
      String? experienceStatus,
      String? courseOrTrainingStatus,
      String? skillInfoStatus});
}

/// @nodoc
class _$IndividualProfileStateCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res>
    implements $IndividualProfileStateCopyWith<$Res> {
  _$IndividualProfileStateCopyWithImpl(IndividualProfileState _value,
      $Res Function(IndividualProfileState) _then)
      : super(_value, (v) => _then(v as IndividualProfileState));

  @override
  IndividualProfileState get _value => super._value as IndividualProfileState;

  @override
  $Res call({
    Object? educationStatus = freezed,
    Object? basicInfoStatus = freezed,
    Object? contactStatus = freezed,
    Object? summaryStatus = freezed,
    Object? experienceStatus = freezed,
    Object? courseOrTrainingStatus = freezed,
    Object? skillInfoStatus = freezed,
  }) {
    return _then(IndividualProfileState(
      educationStatus: educationStatus == freezed
          ? _value.educationStatus
          : educationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      basicInfoStatus: basicInfoStatus == freezed
          ? _value.basicInfoStatus
          : basicInfoStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      contactStatus: contactStatus == freezed
          ? _value.contactStatus
          : contactStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      summaryStatus: summaryStatus == freezed
          ? _value.summaryStatus
          : summaryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceStatus: experienceStatus == freezed
          ? _value.experienceStatus
          : experienceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      courseOrTrainingStatus: courseOrTrainingStatus == freezed
          ? _value.courseOrTrainingStatus
          : courseOrTrainingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      skillInfoStatus: skillInfoStatus == freezed
          ? _value.skillInfoStatus
          : skillInfoStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndividualProfileState implements IndividualProfileState {
  const _$IndividualProfileState(
      {required this.educationStatus,
      required this.basicInfoStatus,
      required this.contactStatus,
      required this.summaryStatus,
      required this.experienceStatus,
      required this.courseOrTrainingStatus,
      required this.skillInfoStatus,
      String? $type})
      : $type = $type ?? 'individualProfileState';

  factory _$IndividualProfileState.fromJson(Map<String, dynamic> json) =>
      _$$IndividualProfileStateFromJson(json);

  @override
  final String? educationStatus;
  @override
  final String? basicInfoStatus;
  @override
  final String? contactStatus;
  @override
  final String? summaryStatus;
  @override
  final String? experienceStatus;
  @override
  final String? courseOrTrainingStatus;
  @override
  final String? skillInfoStatus;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ProfileModel.individualProfileState(educationStatus: $educationStatus, basicInfoStatus: $basicInfoStatus, contactStatus: $contactStatus, summaryStatus: $summaryStatus, experienceStatus: $experienceStatus, courseOrTrainingStatus: $courseOrTrainingStatus, skillInfoStatus: $skillInfoStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IndividualProfileState &&
            const DeepCollectionEquality()
                .equals(other.educationStatus, educationStatus) &&
            const DeepCollectionEquality()
                .equals(other.basicInfoStatus, basicInfoStatus) &&
            const DeepCollectionEquality()
                .equals(other.contactStatus, contactStatus) &&
            const DeepCollectionEquality()
                .equals(other.summaryStatus, summaryStatus) &&
            const DeepCollectionEquality()
                .equals(other.experienceStatus, experienceStatus) &&
            const DeepCollectionEquality()
                .equals(other.courseOrTrainingStatus, courseOrTrainingStatus) &&
            const DeepCollectionEquality()
                .equals(other.skillInfoStatus, skillInfoStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(educationStatus),
      const DeepCollectionEquality().hash(basicInfoStatus),
      const DeepCollectionEquality().hash(contactStatus),
      const DeepCollectionEquality().hash(summaryStatus),
      const DeepCollectionEquality().hash(experienceStatus),
      const DeepCollectionEquality().hash(courseOrTrainingStatus),
      const DeepCollectionEquality().hash(skillInfoStatus));

  @JsonKey(ignore: true)
  @override
  $IndividualProfileStateCopyWith<IndividualProfileState> get copyWith =>
      _$IndividualProfileStateCopyWithImpl<IndividualProfileState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) {
    return individualProfileState(
        educationStatus,
        basicInfoStatus,
        contactStatus,
        summaryStatus,
        experienceStatus,
        courseOrTrainingStatus,
        skillInfoStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) {
    return individualProfileState?.call(
        educationStatus,
        basicInfoStatus,
        contactStatus,
        summaryStatus,
        experienceStatus,
        courseOrTrainingStatus,
        skillInfoStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) {
    if (individualProfileState != null) {
      return individualProfileState(
          educationStatus,
          basicInfoStatus,
          contactStatus,
          summaryStatus,
          experienceStatus,
          courseOrTrainingStatus,
          skillInfoStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) {
    return individualProfileState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) {
    return individualProfileState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) {
    if (individualProfileState != null) {
      return individualProfileState(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IndividualProfileStateToJson(this);
  }
}

abstract class IndividualProfileState implements ProfileModel {
  const factory IndividualProfileState(
      {required String? educationStatus,
      required String? basicInfoStatus,
      required String? contactStatus,
      required String? summaryStatus,
      required String? experienceStatus,
      required String? courseOrTrainingStatus,
      required String? skillInfoStatus}) = _$IndividualProfileState;

  factory IndividualProfileState.fromJson(Map<String, dynamic> json) =
      _$IndividualProfileState.fromJson;

  String? get educationStatus;
  String? get basicInfoStatus;
  String? get contactStatus;
  String? get summaryStatus;
  String? get experienceStatus;
  String? get courseOrTrainingStatus;
  String? get skillInfoStatus;
  @JsonKey(ignore: true)
  $IndividualProfileStateCopyWith<IndividualProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoCopyWith<$Res> {
  factory $BasicInfoCopyWith(BasicInfo value, $Res Function(BasicInfo) then) =
      _$BasicInfoCopyWithImpl<$Res>;
  $Res call(
      {String? firstName,
      String? lastName,
      String? gender,
      Location? primaryLocation,
      Profession? primaryProfession,
      Date? birthDate});
}

/// @nodoc
class _$BasicInfoCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements $BasicInfoCopyWith<$Res> {
  _$BasicInfoCopyWithImpl(BasicInfo _value, $Res Function(BasicInfo) _then)
      : super(_value, (v) => _then(v as BasicInfo));

  @override
  BasicInfo get _value => super._value as BasicInfo;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? primaryLocation = freezed,
    Object? primaryProfession = freezed,
    Object? birthDate = freezed,
  }) {
    return _then(BasicInfo(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryLocation: primaryLocation == freezed
          ? _value.primaryLocation
          : primaryLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      primaryProfession: primaryProfession == freezed
          ? _value.primaryProfession
          : primaryProfession // ignore: cast_nullable_to_non_nullable
              as Profession?,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as Date?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicInfo implements BasicInfo {
  const _$BasicInfo(
      {required this.firstName,
      required this.lastName,
      required this.gender,
      required this.primaryLocation,
      required this.primaryProfession,
      required this.birthDate,
      String? $type})
      : $type = $type ?? 'basicInfo';

  factory _$BasicInfo.fromJson(Map<String, dynamic> json) =>
      _$$BasicInfoFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? gender;
  @override
  final Location? primaryLocation;
  @override
  final Profession? primaryProfession;
  @override
  final Date? birthDate;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ProfileModel.basicInfo(firstName: $firstName, lastName: $lastName, gender: $gender, primaryLocation: $primaryLocation, primaryProfession: $primaryProfession, birthDate: $birthDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicInfo &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.primaryLocation, primaryLocation) &&
            const DeepCollectionEquality()
                .equals(other.primaryProfession, primaryProfession) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(primaryLocation),
      const DeepCollectionEquality().hash(primaryProfession),
      const DeepCollectionEquality().hash(birthDate));

  @JsonKey(ignore: true)
  @override
  $BasicInfoCopyWith<BasicInfo> get copyWith =>
      _$BasicInfoCopyWithImpl<BasicInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) {
    return basicInfo(firstName, lastName, gender, primaryLocation,
        primaryProfession, birthDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) {
    return basicInfo?.call(firstName, lastName, gender, primaryLocation,
        primaryProfession, birthDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) {
    if (basicInfo != null) {
      return basicInfo(firstName, lastName, gender, primaryLocation,
          primaryProfession, birthDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) {
    return basicInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) {
    return basicInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) {
    if (basicInfo != null) {
      return basicInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicInfoToJson(this);
  }
}

abstract class BasicInfo implements ProfileModel {
  const factory BasicInfo(
      {required String? firstName,
      required String? lastName,
      required String? gender,
      required Location? primaryLocation,
      required Profession? primaryProfession,
      required Date? birthDate}) = _$BasicInfo;

  factory BasicInfo.fromJson(Map<String, dynamic> json) = _$BasicInfo.fromJson;

  String? get firstName;
  String? get lastName;
  String? get gender;
  Location? get primaryLocation;
  Profession? get primaryProfession;
  Date? get birthDate;
  @JsonKey(ignore: true)
  $BasicInfoCopyWith<BasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) then) =
      _$DateCopyWithImpl<$Res>;
  $Res call({String? day, String? month, String? year});
}

/// @nodoc
class _$DateCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(Date _value, $Res Function(Date) _then)
      : super(_value, (v) => _then(v as Date));

  @override
  Date get _value => super._value as Date;

  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(Date(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Date implements Date {
  const _$Date(
      {required this.day,
      required this.month,
      required this.year,
      String? $type})
      : $type = $type ?? 'date';

  factory _$Date.fromJson(Map<String, dynamic> json) => _$$DateFromJson(json);

  @override
  final String? day;
  @override
  final String? month;
  @override
  final String? year;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ProfileModel.date(day: $day, month: $month, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Date &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.year, year));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(year));

  @JsonKey(ignore: true)
  @override
  $DateCopyWith<Date> get copyWith =>
      _$DateCopyWithImpl<Date>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) {
    return date(day, month, year);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) {
    return date?.call(day, month, year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(day, month, year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DateToJson(this);
  }
}

abstract class Date implements ProfileModel {
  const factory Date(
      {required String? day,
      required String? month,
      required String? year}) = _$Date;

  factory Date.fromJson(Map<String, dynamic> json) = _$Date.fromJson;

  String? get day;
  String? get month;
  String? get year;
  @JsonKey(ignore: true)
  $DateCopyWith<Date> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSummaryCopyWith<$Res> {
  factory $UserSummaryCopyWith(
          UserSummary value, $Res Function(UserSummary) then) =
      _$UserSummaryCopyWithImpl<$Res>;
  $Res call({String? value, int? id});
}

/// @nodoc
class _$UserSummaryCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements $UserSummaryCopyWith<$Res> {
  _$UserSummaryCopyWithImpl(
      UserSummary _value, $Res Function(UserSummary) _then)
      : super(_value, (v) => _then(v as UserSummary));

  @override
  UserSummary get _value => super._value as UserSummary;

  @override
  $Res call({
    Object? value = freezed,
    Object? id = freezed,
  }) {
    return _then(UserSummary(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSummary implements UserSummary {
  const _$UserSummary({required this.value, this.id, String? $type})
      : $type = $type ?? 'userSummary';

  factory _$UserSummary.fromJson(Map<String, dynamic> json) =>
      _$$UserSummaryFromJson(json);

  @override
  final String? value;
  @override
  final int? id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ProfileModel.userSummary(value: $value, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserSummary &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $UserSummaryCopyWith<UserSummary> get copyWith =>
      _$UserSummaryCopyWithImpl<UserSummary>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) {
    return userSummary(value, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) {
    return userSummary?.call(value, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) {
    if (userSummary != null) {
      return userSummary(value, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) {
    return userSummary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) {
    return userSummary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) {
    if (userSummary != null) {
      return userSummary(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSummaryToJson(this);
  }
}

abstract class UserSummary implements ProfileModel {
  const factory UserSummary({required String? value, int? id}) = _$UserSummary;

  factory UserSummary.fromJson(Map<String, dynamic> json) =
      _$UserSummary.fromJson;

  String? get value;
  int? get id;
  @JsonKey(ignore: true)
  $UserSummaryCopyWith<UserSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceCopyWith<$Res> {
  factory $ExperienceCopyWith(
          Experience value, $Res Function(Experience) then) =
      _$ExperienceCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      bool? stillWorking,
      String? companyName,
      Date? startDate,
      Date? endDate,
      String? positionName,
      String? employeeType,
      Location? location});
}

/// @nodoc
class _$ExperienceCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(Experience _value, $Res Function(Experience) _then)
      : super(_value, (v) => _then(v as Experience));

  @override
  Experience get _value => super._value as Experience;

  @override
  $Res call({
    Object? id = freezed,
    Object? stillWorking = freezed,
    Object? companyName = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? positionName = freezed,
    Object? employeeType = freezed,
    Object? location = freezed,
  }) {
    return _then(Experience(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      stillWorking: stillWorking == freezed
          ? _value.stillWorking
          : stillWorking // ignore: cast_nullable_to_non_nullable
              as bool?,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      positionName: positionName == freezed
          ? _value.positionName
          : positionName // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeType: employeeType == freezed
          ? _value.employeeType
          : employeeType // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Experience implements Experience {
  const _$Experience(
      {this.id,
      required this.stillWorking,
      required this.companyName,
      required this.startDate,
      required this.endDate,
      required this.positionName,
      required this.employeeType,
      required this.location,
      String? $type})
      : $type = $type ?? 'experience';

  factory _$Experience.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceFromJson(json);

  @override
  final int? id;
  @override
  final bool? stillWorking;
  @override
  final String? companyName;
  @override
  final Date? startDate;
  @override
  final Date? endDate;
  @override
  final String? positionName;
  @override
  final String? employeeType;
  @override
  final Location? location;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ProfileModel.experience(id: $id, stillWorking: $stillWorking, companyName: $companyName, startDate: $startDate, endDate: $endDate, positionName: $positionName, employeeType: $employeeType, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Experience &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.stillWorking, stillWorking) &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.positionName, positionName) &&
            const DeepCollectionEquality()
                .equals(other.employeeType, employeeType) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(stillWorking),
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(positionName),
      const DeepCollectionEquality().hash(employeeType),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $ExperienceCopyWith<Experience> get copyWith =>
      _$ExperienceCopyWithImpl<Experience>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) {
    return experience(id, stillWorking, companyName, startDate, endDate,
        positionName, employeeType, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) {
    return experience?.call(id, stillWorking, companyName, startDate, endDate,
        positionName, employeeType, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) {
    if (experience != null) {
      return experience(id, stillWorking, companyName, startDate, endDate,
          positionName, employeeType, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) {
    return experience(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) {
    return experience?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) {
    if (experience != null) {
      return experience(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceToJson(this);
  }
}

abstract class Experience implements ProfileModel {
  const factory Experience(
      {int? id,
      required bool? stillWorking,
      required String? companyName,
      required Date? startDate,
      required Date? endDate,
      required String? positionName,
      required String? employeeType,
      required Location? location}) = _$Experience;

  factory Experience.fromJson(Map<String, dynamic> json) =
      _$Experience.fromJson;

  int? get id;
  bool? get stillWorking;
  String? get companyName;
  Date? get startDate;
  Date? get endDate;
  String? get positionName;
  String? get employeeType;
  Location? get location;
  @JsonKey(ignore: true)
  $ExperienceCopyWith<Experience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInfoCopyWith<$Res> {
  factory $ContactInfoCopyWith(
          ContactInfo value, $Res Function(ContactInfo) then) =
      _$ContactInfoCopyWithImpl<$Res>;
  $Res call(
      {String? phoneNumber,
      String? email,
      String? facebook,
      String? linkedIn,
      String? twitter});
}

/// @nodoc
class _$ContactInfoCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(
      ContactInfo _value, $Res Function(ContactInfo) _then)
      : super(_value, (v) => _then(v as ContactInfo));

  @override
  ContactInfo get _value => super._value as ContactInfo;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? facebook = freezed,
    Object? linkedIn = freezed,
    Object? twitter = freezed,
  }) {
    return _then(ContactInfo(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: facebook == freezed
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedIn: linkedIn == freezed
          ? _value.linkedIn
          : linkedIn // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: twitter == freezed
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactInfo implements ContactInfo {
  const _$ContactInfo(
      {required this.phoneNumber,
      required this.email,
      required this.facebook,
      required this.linkedIn,
      required this.twitter,
      String? $type})
      : $type = $type ?? 'contactInfo';

  factory _$ContactInfo.fromJson(Map<String, dynamic> json) =>
      _$$ContactInfoFromJson(json);

  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? facebook;
  @override
  final String? linkedIn;
  @override
  final String? twitter;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ProfileModel.contactInfo(phoneNumber: $phoneNumber, email: $email, facebook: $facebook, linkedIn: $linkedIn, twitter: $twitter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactInfo &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.facebook, facebook) &&
            const DeepCollectionEquality().equals(other.linkedIn, linkedIn) &&
            const DeepCollectionEquality().equals(other.twitter, twitter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(facebook),
      const DeepCollectionEquality().hash(linkedIn),
      const DeepCollectionEquality().hash(twitter));

  @JsonKey(ignore: true)
  @override
  $ContactInfoCopyWith<ContactInfo> get copyWith =>
      _$ContactInfoCopyWithImpl<ContactInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) {
    return contactInfo(phoneNumber, email, facebook, linkedIn, twitter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) {
    return contactInfo?.call(phoneNumber, email, facebook, linkedIn, twitter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) {
    if (contactInfo != null) {
      return contactInfo(phoneNumber, email, facebook, linkedIn, twitter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) {
    return contactInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) {
    return contactInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) {
    if (contactInfo != null) {
      return contactInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactInfoToJson(this);
  }
}

abstract class ContactInfo implements ProfileModel {
  const factory ContactInfo(
      {required String? phoneNumber,
      required String? email,
      required String? facebook,
      required String? linkedIn,
      required String? twitter}) = _$ContactInfo;

  factory ContactInfo.fromJson(Map<String, dynamic> json) =
      _$ContactInfo.fromJson;

  String? get phoneNumber;
  String? get email;
  String? get facebook;
  String? get linkedIn;
  String? get twitter;
  @JsonKey(ignore: true)
  $ContactInfoCopyWith<ContactInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? level});
}

/// @nodoc
class _$SkillCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(Skill _value, $Res Function(Skill) _then)
      : super(_value, (v) => _then(v as Skill));

  @override
  Skill get _value => super._value as Skill;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
  }) {
    return _then(Skill(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Skill implements Skill {
  const _$Skill(
      {this.id, required this.name, required this.level, String? $type})
      : $type = $type ?? 'skill';

  factory _$Skill.fromJson(Map<String, dynamic> json) => _$$SkillFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? level;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ProfileModel.skill(id: $id, name: $name, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Skill &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  $SkillCopyWith<Skill> get copyWith =>
      _$SkillCopyWithImpl<Skill>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) {
    return skill(id, name, level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) {
    return skill?.call(id, name, level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) {
    if (skill != null) {
      return skill(id, name, level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) {
    return skill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) {
    return skill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) {
    if (skill != null) {
      return skill(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillToJson(this);
  }
}

abstract class Skill implements ProfileModel {
  const factory Skill(
      {int? id, required String? name, required String? level}) = _$Skill;

  factory Skill.fromJson(Map<String, dynamic> json) = _$Skill.fromJson;

  int? get id;
  String? get name;
  String? get level;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationCopyWith<$Res> {
  factory $EducationCopyWith(Education value, $Res Function(Education) then) =
      _$EducationCopyWithImpl<$Res>;
  $Res call(
      {String? certificationFileName,
      int? id,
      String? grade,
      String? universityName,
      String? fieldOfStudyName,
      String? degreeName,
      String? majorName,
      String? minerName,
      Date? startDate,
      Date? endDate});
}

/// @nodoc
class _$EducationCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements $EducationCopyWith<$Res> {
  _$EducationCopyWithImpl(Education _value, $Res Function(Education) _then)
      : super(_value, (v) => _then(v as Education));

  @override
  Education get _value => super._value as Education;

  @override
  $Res call({
    Object? certificationFileName = freezed,
    Object? id = freezed,
    Object? grade = freezed,
    Object? universityName = freezed,
    Object? fieldOfStudyName = freezed,
    Object? degreeName = freezed,
    Object? majorName = freezed,
    Object? minerName = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(Education(
      certificationFileName: certificationFileName == freezed
          ? _value.certificationFileName
          : certificationFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      universityName: universityName == freezed
          ? _value.universityName
          : universityName // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldOfStudyName: fieldOfStudyName == freezed
          ? _value.fieldOfStudyName
          : fieldOfStudyName // ignore: cast_nullable_to_non_nullable
              as String?,
      degreeName: degreeName == freezed
          ? _value.degreeName
          : degreeName // ignore: cast_nullable_to_non_nullable
              as String?,
      majorName: majorName == freezed
          ? _value.majorName
          : majorName // ignore: cast_nullable_to_non_nullable
              as String?,
      minerName: minerName == freezed
          ? _value.minerName
          : minerName // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Date?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Education implements Education {
  const _$Education(
      {required this.certificationFileName,
      this.id,
      required this.grade,
      required this.universityName,
      required this.fieldOfStudyName,
      required this.degreeName,
      required this.majorName,
      required this.minerName,
      required this.startDate,
      required this.endDate,
      String? $type})
      : $type = $type ?? 'education';

  factory _$Education.fromJson(Map<String, dynamic> json) =>
      _$$EducationFromJson(json);

  @override
  final String? certificationFileName;
  @override
  final int? id;
  @override
  final String? grade;
  @override
  final String? universityName;
  @override
  final String? fieldOfStudyName;
  @override
  final String? degreeName;
  @override
  final String? majorName;
  @override
  final String? minerName;
  @override
  final Date? startDate;
  @override
  final Date? endDate;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ProfileModel.education(certificationFileName: $certificationFileName, id: $id, grade: $grade, universityName: $universityName, fieldOfStudyName: $fieldOfStudyName, degreeName: $degreeName, majorName: $majorName, minerName: $minerName, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Education &&
            const DeepCollectionEquality()
                .equals(other.certificationFileName, certificationFileName) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.grade, grade) &&
            const DeepCollectionEquality()
                .equals(other.universityName, universityName) &&
            const DeepCollectionEquality()
                .equals(other.fieldOfStudyName, fieldOfStudyName) &&
            const DeepCollectionEquality()
                .equals(other.degreeName, degreeName) &&
            const DeepCollectionEquality().equals(other.majorName, majorName) &&
            const DeepCollectionEquality().equals(other.minerName, minerName) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(certificationFileName),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(grade),
      const DeepCollectionEquality().hash(universityName),
      const DeepCollectionEquality().hash(fieldOfStudyName),
      const DeepCollectionEquality().hash(degreeName),
      const DeepCollectionEquality().hash(majorName),
      const DeepCollectionEquality().hash(minerName),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  $EducationCopyWith<Education> get copyWith =>
      _$EducationCopyWithImpl<Education>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) {
    return education(certificationFileName, id, grade, universityName,
        fieldOfStudyName, degreeName, majorName, minerName, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) {
    return education?.call(certificationFileName, id, grade, universityName,
        fieldOfStudyName, degreeName, majorName, minerName, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) {
    if (education != null) {
      return education(
          certificationFileName,
          id,
          grade,
          universityName,
          fieldOfStudyName,
          degreeName,
          majorName,
          minerName,
          startDate,
          endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) {
    return education(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) {
    return education?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) {
    if (education != null) {
      return education(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationToJson(this);
  }
}

abstract class Education implements ProfileModel {
  const factory Education(
      {required String? certificationFileName,
      int? id,
      required String? grade,
      required String? universityName,
      required String? fieldOfStudyName,
      required String? degreeName,
      required String? majorName,
      required String? minerName,
      required Date? startDate,
      required Date? endDate}) = _$Education;

  factory Education.fromJson(Map<String, dynamic> json) = _$Education.fromJson;

  String? get certificationFileName;
  int? get id;
  String? get grade;
  String? get universityName;
  String? get fieldOfStudyName;
  String? get degreeName;
  String? get majorName;
  String? get minerName;
  Date? get startDate;
  Date? get endDate;
  @JsonKey(ignore: true)
  $EducationCopyWith<Education> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? courseName,
      String? TeacherName,
      String? organization,
      Location? location,
      Date? startDate,
      Date? endDate});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(Course _value, $Res Function(Course) _then)
      : super(_value, (v) => _then(v as Course));

  @override
  Course get _value => super._value as Course;

  @override
  $Res call({
    Object? id = freezed,
    Object? courseName = freezed,
    Object? TeacherName = freezed,
    Object? organization = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(Course(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      courseName: courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      TeacherName: TeacherName == freezed
          ? _value.TeacherName
          : TeacherName // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: organization == freezed
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Date?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Date?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Course implements Course {
  const _$Course(
      {this.id,
      required this.courseName,
      required this.TeacherName,
      required this.organization,
      required this.location,
      required this.startDate,
      required this.endDate,
      String? $type})
      : $type = $type ?? 'course';

  factory _$Course.fromJson(Map<String, dynamic> json) =>
      _$$CourseFromJson(json);

  @override
  final int? id;
  @override
  final String? courseName;
  @override
  final String? TeacherName;
  @override
  final String? organization;
  @override
  final Location? location;
  @override
  final Date? startDate;
  @override
  final Date? endDate;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ProfileModel.course(id: $id, courseName: $courseName, TeacherName: $TeacherName, organization: $organization, location: $location, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Course &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.courseName, courseName) &&
            const DeepCollectionEquality()
                .equals(other.TeacherName, TeacherName) &&
            const DeepCollectionEquality()
                .equals(other.organization, organization) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(courseName),
      const DeepCollectionEquality().hash(TeacherName),
      const DeepCollectionEquality().hash(organization),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  $CourseCopyWith<Course> get copyWith =>
      _$CourseCopyWithImpl<Course>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)
        individualProfile,
    required TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)
        individualProfileState,
    required TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)
        basicInfo,
    required TResult Function(String? day, String? month, String? year) date,
    required TResult Function(String? value, int? id) userSummary,
    required TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)
        experience,
    required TResult Function(String? phoneNumber, String? email,
            String? facebook, String? linkedIn, String? twitter)
        contactInfo,
    required TResult Function(int? id, String? name, String? level) skill,
    required TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)
        education,
    required TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)
        course,
  }) {
    return course(id, courseName, TeacherName, organization, location,
        startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
  }) {
    return course?.call(id, courseName, TeacherName, organization, location,
        startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? backgroundImageName,
            String? profileImageName,
            BasicInfo basicInfo,
            UserSummary summary,
            List<Experience> experienceInfo,
            ContactInfo contactInfo,
            List<Skill> skillInfo,
            List<Education> educationInfo,
            List<Course> courseOrTrainingInfo)?
        individualProfile,
    TResult Function(
            String? educationStatus,
            String? basicInfoStatus,
            String? contactStatus,
            String? summaryStatus,
            String? experienceStatus,
            String? courseOrTrainingStatus,
            String? skillInfoStatus)?
        individualProfileState,
    TResult Function(
            String? firstName,
            String? lastName,
            String? gender,
            Location? primaryLocation,
            Profession? primaryProfession,
            Date? birthDate)?
        basicInfo,
    TResult Function(String? day, String? month, String? year)? date,
    TResult Function(String? value, int? id)? userSummary,
    TResult Function(
            int? id,
            bool? stillWorking,
            String? companyName,
            Date? startDate,
            Date? endDate,
            String? positionName,
            String? employeeType,
            Location? location)?
        experience,
    TResult Function(String? phoneNumber, String? email, String? facebook,
            String? linkedIn, String? twitter)?
        contactInfo,
    TResult Function(int? id, String? name, String? level)? skill,
    TResult Function(
            String? certificationFileName,
            int? id,
            String? grade,
            String? universityName,
            String? fieldOfStudyName,
            String? degreeName,
            String? majorName,
            String? minerName,
            Date? startDate,
            Date? endDate)?
        education,
    TResult Function(
            int? id,
            String? courseName,
            String? TeacherName,
            String? organization,
            Location? location,
            Date? startDate,
            Date? endDate)?
        course,
    required TResult orElse(),
  }) {
    if (course != null) {
      return course(id, courseName, TeacherName, organization, location,
          startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndividualProfile value) individualProfile,
    required TResult Function(IndividualProfileState value)
        individualProfileState,
    required TResult Function(BasicInfo value) basicInfo,
    required TResult Function(Date value) date,
    required TResult Function(UserSummary value) userSummary,
    required TResult Function(Experience value) experience,
    required TResult Function(ContactInfo value) contactInfo,
    required TResult Function(Skill value) skill,
    required TResult Function(Education value) education,
    required TResult Function(Course value) course,
  }) {
    return course(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
  }) {
    return course?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndividualProfile value)? individualProfile,
    TResult Function(IndividualProfileState value)? individualProfileState,
    TResult Function(BasicInfo value)? basicInfo,
    TResult Function(Date value)? date,
    TResult Function(UserSummary value)? userSummary,
    TResult Function(Experience value)? experience,
    TResult Function(ContactInfo value)? contactInfo,
    TResult Function(Skill value)? skill,
    TResult Function(Education value)? education,
    TResult Function(Course value)? course,
    required TResult orElse(),
  }) {
    if (course != null) {
      return course(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseToJson(this);
  }
}

abstract class Course implements ProfileModel {
  const factory Course(
      {int? id,
      required String? courseName,
      required String? TeacherName,
      required String? organization,
      required Location? location,
      required Date? startDate,
      required Date? endDate}) = _$Course;

  factory Course.fromJson(Map<String, dynamic> json) = _$Course.fromJson;

  int? get id;
  String? get courseName;
  String? get TeacherName;
  String? get organization;
  Location? get location;
  Date? get startDate;
  Date? get endDate;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}
