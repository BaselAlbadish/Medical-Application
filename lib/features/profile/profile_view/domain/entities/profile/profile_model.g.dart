// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndividualProfile _$$IndividualProfileFromJson(Map<String, dynamic> json) =>
    _$IndividualProfile(
      backgroundImageName: json['backgroundImageName'] as String?,
      profileImageName: json['profileImageName'] as String?,
      basicInfo: BasicInfo.fromJson(json['basicInfo'] as Map<String, dynamic>),
      summary: UserSummary.fromJson(json['summary'] as Map<String, dynamic>),
      experienceInfo: (json['experienceInfo'] as List<dynamic>)
          .map((e) => Experience.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactInfo:
          ContactInfo.fromJson(json['contactInfo'] as Map<String, dynamic>),
      skillInfo: (json['skillInfo'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      educationInfo: (json['educationInfo'] as List<dynamic>)
          .map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
      courseOrTrainingInfo: (json['courseOrTrainingInfo'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IndividualProfileToJson(_$IndividualProfile instance) =>
    <String, dynamic>{
      'backgroundImageName': instance.backgroundImageName,
      'profileImageName': instance.profileImageName,
      'basicInfo': instance.basicInfo,
      'summary': instance.summary,
      'experienceInfo': instance.experienceInfo,
      'contactInfo': instance.contactInfo,
      'skillInfo': instance.skillInfo,
      'educationInfo': instance.educationInfo,
      'courseOrTrainingInfo': instance.courseOrTrainingInfo,
      'runtimeType': instance.$type,
    };

_$IndividualProfileState _$$IndividualProfileStateFromJson(
        Map<String, dynamic> json) =>
    _$IndividualProfileState(
      educationStatus: json['educationStatus'] as String?,
      basicInfoStatus: json['basicInfoStatus'] as String?,
      contactStatus: json['contactStatus'] as String?,
      summaryStatus: json['summaryStatus'] as String?,
      experienceStatus: json['experienceStatus'] as String?,
      courseOrTrainingStatus: json['courseOrTrainingStatus'] as String?,
      skillInfoStatus: json['skillInfoStatus'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IndividualProfileStateToJson(
        _$IndividualProfileState instance) =>
    <String, dynamic>{
      'educationStatus': instance.educationStatus,
      'basicInfoStatus': instance.basicInfoStatus,
      'contactStatus': instance.contactStatus,
      'summaryStatus': instance.summaryStatus,
      'experienceStatus': instance.experienceStatus,
      'courseOrTrainingStatus': instance.courseOrTrainingStatus,
      'skillInfoStatus': instance.skillInfoStatus,
      'runtimeType': instance.$type,
    };

_$BasicInfo _$$BasicInfoFromJson(Map<String, dynamic> json) => _$BasicInfo(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      gender: json['gender'] as String?,
      primaryLocation: json['primaryLocation'] == null
          ? null
          : Location.fromJson(json['primaryLocation'] as Map<String, dynamic>),
      primaryProfession: json['primaryProfession'] == null
          ? null
          : Profession.fromJson(
              json['primaryProfession'] as Map<String, dynamic>),
      birthDate: json['birthDate'] == null
          ? null
          : Date.fromJson(json['birthDate'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BasicInfoToJson(_$BasicInfo instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'primaryLocation': instance.primaryLocation,
      'primaryProfession': instance.primaryProfession,
      'birthDate': instance.birthDate,
      'runtimeType': instance.$type,
    };

_$Date _$$DateFromJson(Map<String, dynamic> json) => _$Date(
      day: json['day'] as String?,
      month: json['month'] as String?,
      year: json['year'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DateToJson(_$Date instance) => <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'runtimeType': instance.$type,
    };

_$UserSummary _$$UserSummaryFromJson(Map<String, dynamic> json) =>
    _$UserSummary(
      value: json['value'] as String?,
      id: json['id'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserSummaryToJson(_$UserSummary instance) =>
    <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$Experience _$$ExperienceFromJson(Map<String, dynamic> json) => _$Experience(
      id: json['id'] as int?,
      stillWorking: json['stillWorking'] as bool?,
      companyName: json['companyName'] as String?,
      startDate: json['startDate'] == null
          ? null
          : Date.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: json['endDate'] == null
          ? null
          : Date.fromJson(json['endDate'] as Map<String, dynamic>),
      positionName: json['positionName'] as String?,
      employeeType: json['employeeType'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ExperienceToJson(_$Experience instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stillWorking': instance.stillWorking,
      'companyName': instance.companyName,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'positionName': instance.positionName,
      'employeeType': instance.employeeType,
      'location': instance.location,
      'runtimeType': instance.$type,
    };

_$ContactInfo _$$ContactInfoFromJson(Map<String, dynamic> json) =>
    _$ContactInfo(
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      facebook: json['facebook'] as String?,
      linkedIn: json['linkedIn'] as String?,
      twitter: json['twitter'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ContactInfoToJson(_$ContactInfo instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'facebook': instance.facebook,
      'linkedIn': instance.linkedIn,
      'twitter': instance.twitter,
      'runtimeType': instance.$type,
    };

_$Skill _$$SkillFromJson(Map<String, dynamic> json) => _$Skill(
      id: json['id'] as int?,
      name: json['name'] as String?,
      level: json['level'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SkillToJson(_$Skill instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
      'runtimeType': instance.$type,
    };

_$Education _$$EducationFromJson(Map<String, dynamic> json) => _$Education(
      certificationFileName: json['certificationFileName'] as String?,
      id: json['id'] as int?,
      grade: json['grade'] as String?,
      universityName: json['universityName'] as String?,
      fieldOfStudyName: json['fieldOfStudyName'] as String?,
      degreeName: json['degreeName'] as String?,
      majorName: json['majorName'] as String?,
      minerName: json['minerName'] as String?,
      startDate: json['startDate'] == null
          ? null
          : Date.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: json['endDate'] == null
          ? null
          : Date.fromJson(json['endDate'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EducationToJson(_$Education instance) =>
    <String, dynamic>{
      'certificationFileName': instance.certificationFileName,
      'id': instance.id,
      'grade': instance.grade,
      'universityName': instance.universityName,
      'fieldOfStudyName': instance.fieldOfStudyName,
      'degreeName': instance.degreeName,
      'majorName': instance.majorName,
      'minerName': instance.minerName,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'runtimeType': instance.$type,
    };

_$Course _$$CourseFromJson(Map<String, dynamic> json) => _$Course(
      id: json['id'] as int?,
      courseName: json['courseName'] as String?,
      TeacherName: json['TeacherName'] as String?,
      organization: json['organization'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      startDate: json['startDate'] == null
          ? null
          : Date.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: json['endDate'] == null
          ? null
          : Date.fromJson(json['endDate'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CourseToJson(_$Course instance) => <String, dynamic>{
      'id': instance.id,
      'courseName': instance.courseName,
      'TeacherName': instance.TeacherName,
      'organization': instance.organization,
      'location': instance.location,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'runtimeType': instance.$type,
    };
