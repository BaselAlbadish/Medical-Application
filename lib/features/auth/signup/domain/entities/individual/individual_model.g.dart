// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Individual _$$IndividualFromJson(Map<String, dynamic> json) => _$Individual(
      firsName: json['firsName'] as String,
      lastName: json['lastName'] as String,
      accountStatus: json['accountStatus'] as String,
      phoneNumber: json['phoneNumber'] as String,
      realPhoneNumber: json['realPhoneNumber'] as String,
      userName: json['userName'] as String,
      passWord: json['passWord'] as String,
      email: json['email'] as String,
      addressId: json['addressId'] as int,
      primaryProfession: Profession.fromJson(
          json['primaryProfession'] as Map<String, dynamic>),
      universityName:
          University.fromJson(json['universityName'] as Map<String, dynamic>),
      degreeName: Degree.fromJson(json['degreeName'] as Map<String, dynamic>),
      majorName: Major.fromJson(json['majorName'] as Map<String, dynamic>),
      minorName: Minor.fromJson(json['minorName'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IndividualToJson(_$Individual instance) =>
    <String, dynamic>{
      'firsName': instance.firsName,
      'lastName': instance.lastName,
      'accountStatus': instance.accountStatus,
      'phoneNumber': instance.phoneNumber,
      'realPhoneNumber': instance.realPhoneNumber,
      'userName': instance.userName,
      'passWord': instance.passWord,
      'email': instance.email,
      'addressId': instance.addressId,
      'primaryProfession': instance.primaryProfession,
      'universityName': instance.universityName,
      'degreeName': instance.degreeName,
      'majorName': instance.majorName,
      'minorName': instance.minorName,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$Degree _$$DegreeFromJson(Map<String, dynamic> json) => _$Degree(
      name: json['name'] as String,
      id: json['id'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DegreeToJson(_$Degree instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$GeneratedEmail _$$GeneratedEmailFromJson(Map<String, dynamic> json) =>
    _$GeneratedEmail(
      username: json['username'] as String,
      email: json['email'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GeneratedEmailToJson(_$GeneratedEmail instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'runtimeType': instance.$type,
    };

_$Company _$$CompanyFromJson(Map<String, dynamic> json) => _$Company(
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CompanyToJson(_$Company instance) => <String, dynamic>{
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$Teacher _$$TeacherFromJson(Map<String, dynamic> json) => _$Teacher(
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TeacherToJson(_$Teacher instance) => <String, dynamic>{
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$Location _$$LocationFromJson(Map<String, dynamic> json) => _$Location(
      id: json['id'] as int?,
      country: Country.fromJson(json['Country'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationToJson(_$Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Country': instance.country,
      'runtimeType': instance.$type,
    };

_$Major _$$MajorFromJson(Map<String, dynamic> json) => _$Major(
      name: json['name'] as String,
      id: json['id'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MajorToJson(_$Major instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$State _$$StateFromJson(Map<String, dynamic> json) => _$State(
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StateToJson(_$State instance) => <String, dynamic>{
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$Minor _$$MinorFromJson(Map<String, dynamic> json) => _$Minor(
      name: json['name'] as String,
      id: json['id'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MinorToJson(_$Minor instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$Position _$$PositionFromJson(Map<String, dynamic> json) => _$Position(
      name: json['name'] as String,
      id: json['id'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PositionToJson(_$Position instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$Profession _$$ProfessionFromJson(Map<String, dynamic> json) => _$Profession(
      name: json['name'] as String,
      id: json['id'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfessionToJson(_$Profession instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$University _$$UniversityFromJson(Map<String, dynamic> json) => _$University(
      name: json['name'] as String,
      id: json['id'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UniversityToJson(_$University instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$Country _$$CountryFromJson(Map<String, dynamic> json) => _$Country(
      name: json['name'] as String,
      code: json['code'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CountryToJson(_$Country instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'runtimeType': instance.$type,
    };
