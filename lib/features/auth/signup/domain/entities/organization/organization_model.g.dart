// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Organization _$$OrganizationFromJson(Map<String, dynamic> json) =>
    _$Organization(
      organizationName: json['organizationName'] as String,
      website: json['website'] as String,
      locationId: json['locationId'] as int,
      PrimaryBusinessName: json['PrimaryBusinessName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      accountStatus: json['accountStatus'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrganizationToJson(_$Organization instance) =>
    <String, dynamic>{
      'organizationName': instance.organizationName,
      'website': instance.website,
      'locationId': instance.locationId,
      'PrimaryBusinessName': instance.PrimaryBusinessName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'password': instance.password,
      'accountStatus': instance.accountStatus,
      'runtimeType': instance.$type,
    };

_$PrimaryBusiness _$$PrimaryBusinessFromJson(Map<String, dynamic> json) =>
    _$PrimaryBusiness(
      id: json['id'] as int,
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PrimaryBusinessToJson(_$PrimaryBusiness instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'runtimeType': instance.$type,
    };
