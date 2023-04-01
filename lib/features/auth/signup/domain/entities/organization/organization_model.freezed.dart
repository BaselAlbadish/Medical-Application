// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'organization_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganizationModel _$OrganizationModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'organization':
      return Organization.fromJson(json);
    case 'primaryBusiness':
      return PrimaryBusiness.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OrganizationModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$OrganizationModelTearOff {
  const _$OrganizationModelTearOff();

  Organization organization(
      {required String organizationName,
      required String website,
      required int locationId,
      required String PrimaryBusinessName,
      required String email,
      required String phoneNumber,
      required String username,
      required String password,
      required String accountStatus}) {
    return Organization(
      organizationName: organizationName,
      website: website,
      locationId: locationId,
      PrimaryBusinessName: PrimaryBusinessName,
      email: email,
      phoneNumber: phoneNumber,
      username: username,
      password: password,
      accountStatus: accountStatus,
    );
  }

  PrimaryBusiness primaryBusiness({required int id, required String name}) {
    return PrimaryBusiness(
      id: id,
      name: name,
    );
  }

  OrganizationModel fromJson(Map<String, Object?> json) {
    return OrganizationModel.fromJson(json);
  }
}

/// @nodoc
const $OrganizationModel = _$OrganizationModelTearOff();

/// @nodoc
mixin _$OrganizationModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String organizationName,
            String website,
            int locationId,
            String PrimaryBusinessName,
            String email,
            String phoneNumber,
            String username,
            String password,
            String accountStatus)
        organization,
    required TResult Function(int id, String name) primaryBusiness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String organizationName,
            String website,
            int locationId,
            String PrimaryBusinessName,
            String email,
            String phoneNumber,
            String username,
            String password,
            String accountStatus)?
        organization,
    TResult Function(int id, String name)? primaryBusiness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String organizationName,
            String website,
            int locationId,
            String PrimaryBusinessName,
            String email,
            String phoneNumber,
            String username,
            String password,
            String accountStatus)?
        organization,
    TResult Function(int id, String name)? primaryBusiness,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Organization value) organization,
    required TResult Function(PrimaryBusiness value) primaryBusiness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Organization value)? organization,
    TResult Function(PrimaryBusiness value)? primaryBusiness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Organization value)? organization,
    TResult Function(PrimaryBusiness value)? primaryBusiness,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationModelCopyWith<$Res> {
  factory $OrganizationModelCopyWith(
          OrganizationModel value, $Res Function(OrganizationModel) then) =
      _$OrganizationModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrganizationModelCopyWithImpl<$Res>
    implements $OrganizationModelCopyWith<$Res> {
  _$OrganizationModelCopyWithImpl(this._value, this._then);

  final OrganizationModel _value;
  // ignore: unused_field
  final $Res Function(OrganizationModel) _then;
}

/// @nodoc
abstract class $OrganizationCopyWith<$Res> {
  factory $OrganizationCopyWith(
          Organization value, $Res Function(Organization) then) =
      _$OrganizationCopyWithImpl<$Res>;
  $Res call(
      {String organizationName,
      String website,
      int locationId,
      String PrimaryBusinessName,
      String email,
      String phoneNumber,
      String username,
      String password,
      String accountStatus});
}

/// @nodoc
class _$OrganizationCopyWithImpl<$Res>
    extends _$OrganizationModelCopyWithImpl<$Res>
    implements $OrganizationCopyWith<$Res> {
  _$OrganizationCopyWithImpl(
      Organization _value, $Res Function(Organization) _then)
      : super(_value, (v) => _then(v as Organization));

  @override
  Organization get _value => super._value as Organization;

  @override
  $Res call({
    Object? organizationName = freezed,
    Object? website = freezed,
    Object? locationId = freezed,
    Object? PrimaryBusinessName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? accountStatus = freezed,
  }) {
    return _then(Organization(
      organizationName: organizationName == freezed
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int,
      PrimaryBusinessName: PrimaryBusinessName == freezed
          ? _value.PrimaryBusinessName
          : PrimaryBusinessName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      accountStatus: accountStatus == freezed
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Organization implements Organization {
  const _$Organization(
      {required this.organizationName,
      required this.website,
      required this.locationId,
      required this.PrimaryBusinessName,
      required this.email,
      required this.phoneNumber,
      required this.username,
      required this.password,
      required this.accountStatus,
      String? $type})
      : $type = $type ?? 'organization';

  factory _$Organization.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationFromJson(json);

  @override
  final String organizationName;
  @override
  final String website;
  @override
  final int locationId;
  @override
  final String PrimaryBusinessName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String username;
  @override
  final String password;
  @override
  final String accountStatus;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OrganizationModel.organization(organizationName: $organizationName, website: $website, locationId: $locationId, PrimaryBusinessName: $PrimaryBusinessName, email: $email, phoneNumber: $phoneNumber, username: $username, password: $password, accountStatus: $accountStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Organization &&
            const DeepCollectionEquality()
                .equals(other.organizationName, organizationName) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality()
                .equals(other.locationId, locationId) &&
            const DeepCollectionEquality()
                .equals(other.PrimaryBusinessName, PrimaryBusinessName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.accountStatus, accountStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(organizationName),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(locationId),
      const DeepCollectionEquality().hash(PrimaryBusinessName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(accountStatus));

  @JsonKey(ignore: true)
  @override
  $OrganizationCopyWith<Organization> get copyWith =>
      _$OrganizationCopyWithImpl<Organization>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String organizationName,
            String website,
            int locationId,
            String PrimaryBusinessName,
            String email,
            String phoneNumber,
            String username,
            String password,
            String accountStatus)
        organization,
    required TResult Function(int id, String name) primaryBusiness,
  }) {
    return organization(
        organizationName,
        website,
        locationId,
        PrimaryBusinessName,
        email,
        phoneNumber,
        username,
        password,
        accountStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String organizationName,
            String website,
            int locationId,
            String PrimaryBusinessName,
            String email,
            String phoneNumber,
            String username,
            String password,
            String accountStatus)?
        organization,
    TResult Function(int id, String name)? primaryBusiness,
  }) {
    return organization?.call(
        organizationName,
        website,
        locationId,
        PrimaryBusinessName,
        email,
        phoneNumber,
        username,
        password,
        accountStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String organizationName,
            String website,
            int locationId,
            String PrimaryBusinessName,
            String email,
            String phoneNumber,
            String username,
            String password,
            String accountStatus)?
        organization,
    TResult Function(int id, String name)? primaryBusiness,
    required TResult orElse(),
  }) {
    if (organization != null) {
      return organization(
          organizationName,
          website,
          locationId,
          PrimaryBusinessName,
          email,
          phoneNumber,
          username,
          password,
          accountStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Organization value) organization,
    required TResult Function(PrimaryBusiness value) primaryBusiness,
  }) {
    return organization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Organization value)? organization,
    TResult Function(PrimaryBusiness value)? primaryBusiness,
  }) {
    return organization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Organization value)? organization,
    TResult Function(PrimaryBusiness value)? primaryBusiness,
    required TResult orElse(),
  }) {
    if (organization != null) {
      return organization(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationToJson(this);
  }
}

abstract class Organization implements OrganizationModel {
  const factory Organization(
      {required String organizationName,
      required String website,
      required int locationId,
      required String PrimaryBusinessName,
      required String email,
      required String phoneNumber,
      required String username,
      required String password,
      required String accountStatus}) = _$Organization;

  factory Organization.fromJson(Map<String, dynamic> json) =
      _$Organization.fromJson;

  String get organizationName;
  String get website;
  int get locationId;
  String get PrimaryBusinessName;
  String get email;
  String get phoneNumber;
  String get username;
  String get password;
  String get accountStatus;
  @JsonKey(ignore: true)
  $OrganizationCopyWith<Organization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryBusinessCopyWith<$Res> {
  factory $PrimaryBusinessCopyWith(
          PrimaryBusiness value, $Res Function(PrimaryBusiness) then) =
      _$PrimaryBusinessCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$PrimaryBusinessCopyWithImpl<$Res>
    extends _$OrganizationModelCopyWithImpl<$Res>
    implements $PrimaryBusinessCopyWith<$Res> {
  _$PrimaryBusinessCopyWithImpl(
      PrimaryBusiness _value, $Res Function(PrimaryBusiness) _then)
      : super(_value, (v) => _then(v as PrimaryBusiness));

  @override
  PrimaryBusiness get _value => super._value as PrimaryBusiness;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(PrimaryBusiness(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrimaryBusiness implements PrimaryBusiness {
  const _$PrimaryBusiness({required this.id, required this.name, String? $type})
      : $type = $type ?? 'primaryBusiness';

  factory _$PrimaryBusiness.fromJson(Map<String, dynamic> json) =>
      _$$PrimaryBusinessFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OrganizationModel.primaryBusiness(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PrimaryBusiness &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $PrimaryBusinessCopyWith<PrimaryBusiness> get copyWith =>
      _$PrimaryBusinessCopyWithImpl<PrimaryBusiness>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String organizationName,
            String website,
            int locationId,
            String PrimaryBusinessName,
            String email,
            String phoneNumber,
            String username,
            String password,
            String accountStatus)
        organization,
    required TResult Function(int id, String name) primaryBusiness,
  }) {
    return primaryBusiness(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String organizationName,
            String website,
            int locationId,
            String PrimaryBusinessName,
            String email,
            String phoneNumber,
            String username,
            String password,
            String accountStatus)?
        organization,
    TResult Function(int id, String name)? primaryBusiness,
  }) {
    return primaryBusiness?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String organizationName,
            String website,
            int locationId,
            String PrimaryBusinessName,
            String email,
            String phoneNumber,
            String username,
            String password,
            String accountStatus)?
        organization,
    TResult Function(int id, String name)? primaryBusiness,
    required TResult orElse(),
  }) {
    if (primaryBusiness != null) {
      return primaryBusiness(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Organization value) organization,
    required TResult Function(PrimaryBusiness value) primaryBusiness,
  }) {
    return primaryBusiness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Organization value)? organization,
    TResult Function(PrimaryBusiness value)? primaryBusiness,
  }) {
    return primaryBusiness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Organization value)? organization,
    TResult Function(PrimaryBusiness value)? primaryBusiness,
    required TResult orElse(),
  }) {
    if (primaryBusiness != null) {
      return primaryBusiness(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PrimaryBusinessToJson(this);
  }
}

abstract class PrimaryBusiness implements OrganizationModel {
  const factory PrimaryBusiness({required int id, required String name}) =
      _$PrimaryBusiness;

  factory PrimaryBusiness.fromJson(Map<String, dynamic> json) =
      _$PrimaryBusiness.fromJson;

  int get id;
  String get name;
  @JsonKey(ignore: true)
  $PrimaryBusinessCopyWith<PrimaryBusiness> get copyWith =>
      throw _privateConstructorUsedError;
}
