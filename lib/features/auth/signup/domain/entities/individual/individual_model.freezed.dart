// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'individual_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IndividualModel _$IndividualModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'individual':
      return Individual.fromJson(json);
    case 'degree':
      return Degree.fromJson(json);
    case 'generatedEmail':
      return GeneratedEmail.fromJson(json);
    case 'company':
      return Company.fromJson(json);
    case 'teacher':
      return Teacher.fromJson(json);
    case 'location':
      return Location.fromJson(json);
    case 'major':
      return Major.fromJson(json);
    case 'state':
      return State.fromJson(json);
    case 'minor':
      return Minor.fromJson(json);
    case 'position':
      return Position.fromJson(json);
    case 'profession':
      return Profession.fromJson(json);
    case 'university':
      return University.fromJson(json);
    case 'country':
      return Country.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'IndividualModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$IndividualModelTearOff {
  const _$IndividualModelTearOff();

  Individual individual(
      {required String firsName,
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
      required DateTime endDate}) {
    return Individual(
      firsName: firsName,
      lastName: lastName,
      accountStatus: accountStatus,
      phoneNumber: phoneNumber,
      realPhoneNumber: realPhoneNumber,
      userName: userName,
      passWord: passWord,
      email: email,
      addressId: addressId,
      primaryProfession: primaryProfession,
      universityName: universityName,
      degreeName: degreeName,
      majorName: majorName,
      minorName: minorName,
      startDate: startDate,
      endDate: endDate,
    );
  }

  Degree degree({required String name, int? id}) {
    return Degree(
      name: name,
      id: id,
    );
  }

  GeneratedEmail generatedEmail(
      {required String username, required String email}) {
    return GeneratedEmail(
      username: username,
      email: email,
    );
  }

  Company company({required String name}) {
    return Company(
      name: name,
    );
  }

  Teacher teacher({required String name}) {
    return Teacher(
      name: name,
    );
  }

  Location location(
      {int? id, @JsonKey(name: 'Country') required Country country}) {
    return Location(
      id: id,
      country: country,
    );
  }

  Major major({required String name, int? id}) {
    return Major(
      name: name,
      id: id,
    );
  }

  State state({required String name}) {
    return State(
      name: name,
    );
  }

  Minor minor({required String name, int? id}) {
    return Minor(
      name: name,
      id: id,
    );
  }

  Position position({required String name, int? id}) {
    return Position(
      name: name,
      id: id,
    );
  }

  Profession profession({required String name, int? id}) {
    return Profession(
      name: name,
      id: id,
    );
  }

  University university({required String name, int? id}) {
    return University(
      name: name,
      id: id,
    );
  }

  Country country({required String name, required String code}) {
    return Country(
      name: name,
      code: code,
    );
  }

  IndividualModel fromJson(Map<String, Object?> json) {
    return IndividualModel.fromJson(json);
  }
}

/// @nodoc
const $IndividualModel = _$IndividualModelTearOff();

/// @nodoc
mixin _$IndividualModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndividualModelCopyWith<$Res> {
  factory $IndividualModelCopyWith(
          IndividualModel value, $Res Function(IndividualModel) then) =
      _$IndividualModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$IndividualModelCopyWithImpl<$Res>
    implements $IndividualModelCopyWith<$Res> {
  _$IndividualModelCopyWithImpl(this._value, this._then);

  final IndividualModel _value;
  // ignore: unused_field
  final $Res Function(IndividualModel) _then;
}

/// @nodoc
abstract class $IndividualCopyWith<$Res> {
  factory $IndividualCopyWith(
          Individual value, $Res Function(Individual) then) =
      _$IndividualCopyWithImpl<$Res>;
  $Res call(
      {String firsName,
      String lastName,
      String accountStatus,
      String phoneNumber,
      String realPhoneNumber,
      String userName,
      String passWord,
      String email,
      int addressId,
      Profession primaryProfession,
      University universityName,
      Degree degreeName,
      Major majorName,
      Minor minorName,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class _$IndividualCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $IndividualCopyWith<$Res> {
  _$IndividualCopyWithImpl(Individual _value, $Res Function(Individual) _then)
      : super(_value, (v) => _then(v as Individual));

  @override
  Individual get _value => super._value as Individual;

  @override
  $Res call({
    Object? firsName = freezed,
    Object? lastName = freezed,
    Object? accountStatus = freezed,
    Object? phoneNumber = freezed,
    Object? realPhoneNumber = freezed,
    Object? userName = freezed,
    Object? passWord = freezed,
    Object? email = freezed,
    Object? addressId = freezed,
    Object? primaryProfession = freezed,
    Object? universityName = freezed,
    Object? degreeName = freezed,
    Object? majorName = freezed,
    Object? minorName = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(Individual(
      firsName: firsName == freezed
          ? _value.firsName
          : firsName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      accountStatus: accountStatus == freezed
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      realPhoneNumber: realPhoneNumber == freezed
          ? _value.realPhoneNumber
          : realPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      passWord: passWord == freezed
          ? _value.passWord
          : passWord // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      primaryProfession: primaryProfession == freezed
          ? _value.primaryProfession
          : primaryProfession // ignore: cast_nullable_to_non_nullable
              as Profession,
      universityName: universityName == freezed
          ? _value.universityName
          : universityName // ignore: cast_nullable_to_non_nullable
              as University,
      degreeName: degreeName == freezed
          ? _value.degreeName
          : degreeName // ignore: cast_nullable_to_non_nullable
              as Degree,
      majorName: majorName == freezed
          ? _value.majorName
          : majorName // ignore: cast_nullable_to_non_nullable
              as Major,
      minorName: minorName == freezed
          ? _value.minorName
          : minorName // ignore: cast_nullable_to_non_nullable
              as Minor,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Individual implements Individual {
  const _$Individual(
      {required this.firsName,
      required this.lastName,
      required this.accountStatus,
      required this.phoneNumber,
      required this.realPhoneNumber,
      required this.userName,
      required this.passWord,
      required this.email,
      required this.addressId,
      required this.primaryProfession,
      required this.universityName,
      required this.degreeName,
      required this.majorName,
      required this.minorName,
      required this.startDate,
      required this.endDate,
      String? $type})
      : $type = $type ?? 'individual';

  factory _$Individual.fromJson(Map<String, dynamic> json) =>
      _$$IndividualFromJson(json);

  @override
  final String firsName;
  @override
  final String lastName;
  @override
  final String accountStatus;
  @override
  final String phoneNumber;
  @override
  final String realPhoneNumber;
  @override
  final String userName;
  @override
  final String passWord;
  @override
  final String email;
  @override
  final int addressId;
  @override
  final Profession primaryProfession;
  @override
  final University universityName;
  @override
  final Degree degreeName;
  @override
  final Major majorName;
  @override
  final Minor minorName;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.individual(firsName: $firsName, lastName: $lastName, accountStatus: $accountStatus, phoneNumber: $phoneNumber, realPhoneNumber: $realPhoneNumber, userName: $userName, passWord: $passWord, email: $email, addressId: $addressId, primaryProfession: $primaryProfession, universityName: $universityName, degreeName: $degreeName, majorName: $majorName, minorName: $minorName, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Individual &&
            const DeepCollectionEquality().equals(other.firsName, firsName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.accountStatus, accountStatus) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.realPhoneNumber, realPhoneNumber) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.passWord, passWord) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.addressId, addressId) &&
            const DeepCollectionEquality()
                .equals(other.primaryProfession, primaryProfession) &&
            const DeepCollectionEquality()
                .equals(other.universityName, universityName) &&
            const DeepCollectionEquality()
                .equals(other.degreeName, degreeName) &&
            const DeepCollectionEquality().equals(other.majorName, majorName) &&
            const DeepCollectionEquality().equals(other.minorName, minorName) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firsName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(accountStatus),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(realPhoneNumber),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(passWord),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(addressId),
      const DeepCollectionEquality().hash(primaryProfession),
      const DeepCollectionEquality().hash(universityName),
      const DeepCollectionEquality().hash(degreeName),
      const DeepCollectionEquality().hash(majorName),
      const DeepCollectionEquality().hash(minorName),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  $IndividualCopyWith<Individual> get copyWith =>
      _$IndividualCopyWithImpl<Individual>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return individual(
        firsName,
        lastName,
        accountStatus,
        phoneNumber,
        realPhoneNumber,
        userName,
        passWord,
        email,
        addressId,
        primaryProfession,
        universityName,
        degreeName,
        majorName,
        minorName,
        startDate,
        endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return individual?.call(
        firsName,
        lastName,
        accountStatus,
        phoneNumber,
        realPhoneNumber,
        userName,
        passWord,
        email,
        addressId,
        primaryProfession,
        universityName,
        degreeName,
        majorName,
        minorName,
        startDate,
        endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (individual != null) {
      return individual(
          firsName,
          lastName,
          accountStatus,
          phoneNumber,
          realPhoneNumber,
          userName,
          passWord,
          email,
          addressId,
          primaryProfession,
          universityName,
          degreeName,
          majorName,
          minorName,
          startDate,
          endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return individual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return individual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (individual != null) {
      return individual(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IndividualToJson(this);
  }
}

abstract class Individual implements IndividualModel {
  const factory Individual(
      {required String firsName,
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
      required DateTime endDate}) = _$Individual;

  factory Individual.fromJson(Map<String, dynamic> json) =
      _$Individual.fromJson;

  String get firsName;
  String get lastName;
  String get accountStatus;
  String get phoneNumber;
  String get realPhoneNumber;
  String get userName;
  String get passWord;
  String get email;
  int get addressId;
  Profession get primaryProfession;
  University get universityName;
  Degree get degreeName;
  Major get majorName;
  Minor get minorName;
  DateTime get startDate;
  DateTime get endDate;
  @JsonKey(ignore: true)
  $IndividualCopyWith<Individual> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DegreeCopyWith<$Res> {
  factory $DegreeCopyWith(Degree value, $Res Function(Degree) then) =
      _$DegreeCopyWithImpl<$Res>;
  $Res call({String name, int? id});
}

/// @nodoc
class _$DegreeCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $DegreeCopyWith<$Res> {
  _$DegreeCopyWithImpl(Degree _value, $Res Function(Degree) _then)
      : super(_value, (v) => _then(v as Degree));

  @override
  Degree get _value => super._value as Degree;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(Degree(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Degree implements Degree {
  const _$Degree({required this.name, this.id, String? $type})
      : $type = $type ?? 'degree';

  factory _$Degree.fromJson(Map<String, dynamic> json) =>
      _$$DegreeFromJson(json);

  @override
  final String name;
  @override
  final int? id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.degree(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Degree &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $DegreeCopyWith<Degree> get copyWith =>
      _$DegreeCopyWithImpl<Degree>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return degree(name, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return degree?.call(name, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (degree != null) {
      return degree(name, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return degree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return degree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (degree != null) {
      return degree(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DegreeToJson(this);
  }
}

abstract class Degree implements IndividualModel {
  const factory Degree({required String name, int? id}) = _$Degree;

  factory Degree.fromJson(Map<String, dynamic> json) = _$Degree.fromJson;

  String get name;
  int? get id;
  @JsonKey(ignore: true)
  $DegreeCopyWith<Degree> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratedEmailCopyWith<$Res> {
  factory $GeneratedEmailCopyWith(
          GeneratedEmail value, $Res Function(GeneratedEmail) then) =
      _$GeneratedEmailCopyWithImpl<$Res>;
  $Res call({String username, String email});
}

/// @nodoc
class _$GeneratedEmailCopyWithImpl<$Res>
    extends _$IndividualModelCopyWithImpl<$Res>
    implements $GeneratedEmailCopyWith<$Res> {
  _$GeneratedEmailCopyWithImpl(
      GeneratedEmail _value, $Res Function(GeneratedEmail) _then)
      : super(_value, (v) => _then(v as GeneratedEmail));

  @override
  GeneratedEmail get _value => super._value as GeneratedEmail;

  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(GeneratedEmail(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneratedEmail implements GeneratedEmail {
  const _$GeneratedEmail(
      {required this.username, required this.email, String? $type})
      : $type = $type ?? 'generatedEmail';

  factory _$GeneratedEmail.fromJson(Map<String, dynamic> json) =>
      _$$GeneratedEmailFromJson(json);

  @override
  final String username;
  @override
  final String email;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.generatedEmail(username: $username, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeneratedEmail &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $GeneratedEmailCopyWith<GeneratedEmail> get copyWith =>
      _$GeneratedEmailCopyWithImpl<GeneratedEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return generatedEmail(username, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return generatedEmail?.call(username, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (generatedEmail != null) {
      return generatedEmail(username, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return generatedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return generatedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (generatedEmail != null) {
      return generatedEmail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneratedEmailToJson(this);
  }
}

abstract class GeneratedEmail implements IndividualModel {
  const factory GeneratedEmail(
      {required String username, required String email}) = _$GeneratedEmail;

  factory GeneratedEmail.fromJson(Map<String, dynamic> json) =
      _$GeneratedEmail.fromJson;

  String get username;
  String get email;
  @JsonKey(ignore: true)
  $GeneratedEmailCopyWith<GeneratedEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(Company _value, $Res Function(Company) _then)
      : super(_value, (v) => _then(v as Company));

  @override
  Company get _value => super._value as Company;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(Company(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Company implements Company {
  const _$Company({required this.name, String? $type})
      : $type = $type ?? 'company';

  factory _$Company.fromJson(Map<String, dynamic> json) =>
      _$$CompanyFromJson(json);

  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.company(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Company &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $CompanyCopyWith<Company> get copyWith =>
      _$CompanyCopyWithImpl<Company>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return company(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return company?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (company != null) {
      return company(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return company(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return company?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (company != null) {
      return company(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyToJson(this);
  }
}

abstract class Company implements IndividualModel {
  const factory Company({required String name}) = _$Company;

  factory Company.fromJson(Map<String, dynamic> json) = _$Company.fromJson;

  String get name;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCopyWith<$Res> {
  factory $TeacherCopyWith(Teacher value, $Res Function(Teacher) then) =
      _$TeacherCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$TeacherCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $TeacherCopyWith<$Res> {
  _$TeacherCopyWithImpl(Teacher _value, $Res Function(Teacher) _then)
      : super(_value, (v) => _then(v as Teacher));

  @override
  Teacher get _value => super._value as Teacher;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(Teacher(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Teacher implements Teacher {
  const _$Teacher({required this.name, String? $type})
      : $type = $type ?? 'teacher';

  factory _$Teacher.fromJson(Map<String, dynamic> json) =>
      _$$TeacherFromJson(json);

  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.teacher(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Teacher &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $TeacherCopyWith<Teacher> get copyWith =>
      _$TeacherCopyWithImpl<Teacher>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return teacher(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return teacher?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (teacher != null) {
      return teacher(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return teacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return teacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (teacher != null) {
      return teacher(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherToJson(this);
  }
}

abstract class Teacher implements IndividualModel {
  const factory Teacher({required String name}) = _$Teacher;

  factory Teacher.fromJson(Map<String, dynamic> json) = _$Teacher.fromJson;

  String get name;
  @JsonKey(ignore: true)
  $TeacherCopyWith<Teacher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({int? id, @JsonKey(name: 'Country') Country country});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(Location _value, $Res Function(Location) _then)
      : super(_value, (v) => _then(v as Location));

  @override
  Location get _value => super._value as Location;

  @override
  $Res call({
    Object? id = freezed,
    Object? country = freezed,
  }) {
    return _then(Location(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Location implements Location {
  const _$Location(
      {this.id, @JsonKey(name: 'Country') required this.country, String? $type})
      : $type = $type ?? 'location';

  factory _$Location.fromJson(Map<String, dynamic> json) =>
      _$$LocationFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'Country')
  final Country country;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.location(id: $id, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Location &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  $LocationCopyWith<Location> get copyWith =>
      _$LocationCopyWithImpl<Location>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return location(id, this.country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return location?.call(id, this.country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(id, this.country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationToJson(this);
  }
}

abstract class Location implements IndividualModel {
  const factory Location(
      {int? id,
      @JsonKey(name: 'Country') required Country country}) = _$Location;

  factory Location.fromJson(Map<String, dynamic> json) = _$Location.fromJson;

  int? get id;
  @JsonKey(name: 'Country')
  Country get country;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorCopyWith<$Res> {
  factory $MajorCopyWith(Major value, $Res Function(Major) then) =
      _$MajorCopyWithImpl<$Res>;
  $Res call({String name, int? id});
}

/// @nodoc
class _$MajorCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $MajorCopyWith<$Res> {
  _$MajorCopyWithImpl(Major _value, $Res Function(Major) _then)
      : super(_value, (v) => _then(v as Major));

  @override
  Major get _value => super._value as Major;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(Major(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Major implements Major {
  const _$Major({required this.name, this.id, String? $type})
      : $type = $type ?? 'major';

  factory _$Major.fromJson(Map<String, dynamic> json) => _$$MajorFromJson(json);

  @override
  final String name;
  @override
  final int? id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.major(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Major &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $MajorCopyWith<Major> get copyWith =>
      _$MajorCopyWithImpl<Major>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return major(name, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return major?.call(name, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (major != null) {
      return major(name, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return major(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return major?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (major != null) {
      return major(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MajorToJson(this);
  }
}

abstract class Major implements IndividualModel {
  const factory Major({required String name, int? id}) = _$Major;

  factory Major.fromJson(Map<String, dynamic> json) = _$Major.fromJson;

  String get name;
  int? get id;
  @JsonKey(ignore: true)
  $MajorCopyWith<Major> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$StateCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(State _value, $Res Function(State) _then)
      : super(_value, (v) => _then(v as State));

  @override
  State get _value => super._value as State;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(State(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$State implements State {
  const _$State({required this.name, String? $type}) : $type = $type ?? 'state';

  factory _$State.fromJson(Map<String, dynamic> json) => _$$StateFromJson(json);

  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.state(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is State &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $StateCopyWith<State> get copyWith =>
      _$StateCopyWithImpl<State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return state(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return state?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StateToJson(this);
  }
}

abstract class State implements IndividualModel {
  const factory State({required String name}) = _$State;

  factory State.fromJson(Map<String, dynamic> json) = _$State.fromJson;

  String get name;
  @JsonKey(ignore: true)
  $StateCopyWith<State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinorCopyWith<$Res> {
  factory $MinorCopyWith(Minor value, $Res Function(Minor) then) =
      _$MinorCopyWithImpl<$Res>;
  $Res call({String name, int? id});
}

/// @nodoc
class _$MinorCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $MinorCopyWith<$Res> {
  _$MinorCopyWithImpl(Minor _value, $Res Function(Minor) _then)
      : super(_value, (v) => _then(v as Minor));

  @override
  Minor get _value => super._value as Minor;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(Minor(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Minor implements Minor {
  const _$Minor({required this.name, this.id, String? $type})
      : $type = $type ?? 'minor';

  factory _$Minor.fromJson(Map<String, dynamic> json) => _$$MinorFromJson(json);

  @override
  final String name;
  @override
  final int? id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.minor(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Minor &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $MinorCopyWith<Minor> get copyWith =>
      _$MinorCopyWithImpl<Minor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return minor(name, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return minor?.call(name, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (minor != null) {
      return minor(name, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return minor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return minor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (minor != null) {
      return minor(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MinorToJson(this);
  }
}

abstract class Minor implements IndividualModel {
  const factory Minor({required String name, int? id}) = _$Minor;

  factory Minor.fromJson(Map<String, dynamic> json) = _$Minor.fromJson;

  String get name;
  int? get id;
  @JsonKey(ignore: true)
  $MinorCopyWith<Minor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res>;
  $Res call({String name, int? id});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(Position _value, $Res Function(Position) _then)
      : super(_value, (v) => _then(v as Position));

  @override
  Position get _value => super._value as Position;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(Position(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Position implements Position {
  const _$Position({required this.name, this.id, String? $type})
      : $type = $type ?? 'position';

  factory _$Position.fromJson(Map<String, dynamic> json) =>
      _$$PositionFromJson(json);

  @override
  final String name;
  @override
  final int? id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.position(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Position &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $PositionCopyWith<Position> get copyWith =>
      _$PositionCopyWithImpl<Position>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return position(name, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return position?.call(name, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (position != null) {
      return position(name, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return position(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return position?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (position != null) {
      return position(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionToJson(this);
  }
}

abstract class Position implements IndividualModel {
  const factory Position({required String name, int? id}) = _$Position;

  factory Position.fromJson(Map<String, dynamic> json) = _$Position.fromJson;

  String get name;
  int? get id;
  @JsonKey(ignore: true)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionCopyWith<$Res> {
  factory $ProfessionCopyWith(
          Profession value, $Res Function(Profession) then) =
      _$ProfessionCopyWithImpl<$Res>;
  $Res call({String name, int? id});
}

/// @nodoc
class _$ProfessionCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $ProfessionCopyWith<$Res> {
  _$ProfessionCopyWithImpl(Profession _value, $Res Function(Profession) _then)
      : super(_value, (v) => _then(v as Profession));

  @override
  Profession get _value => super._value as Profession;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(Profession(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Profession implements Profession {
  const _$Profession({required this.name, this.id, String? $type})
      : $type = $type ?? 'profession';

  factory _$Profession.fromJson(Map<String, dynamic> json) =>
      _$$ProfessionFromJson(json);

  @override
  final String name;
  @override
  final int? id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.profession(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Profession &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $ProfessionCopyWith<Profession> get copyWith =>
      _$ProfessionCopyWithImpl<Profession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return profession(name, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return profession?.call(name, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (profession != null) {
      return profession(name, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return profession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return profession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (profession != null) {
      return profession(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfessionToJson(this);
  }
}

abstract class Profession implements IndividualModel {
  const factory Profession({required String name, int? id}) = _$Profession;

  factory Profession.fromJson(Map<String, dynamic> json) =
      _$Profession.fromJson;

  String get name;
  int? get id;
  @JsonKey(ignore: true)
  $ProfessionCopyWith<Profession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityCopyWith<$Res> {
  factory $UniversityCopyWith(
          University value, $Res Function(University) then) =
      _$UniversityCopyWithImpl<$Res>;
  $Res call({String name, int? id});
}

/// @nodoc
class _$UniversityCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $UniversityCopyWith<$Res> {
  _$UniversityCopyWithImpl(University _value, $Res Function(University) _then)
      : super(_value, (v) => _then(v as University));

  @override
  University get _value => super._value as University;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(University(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$University implements University {
  const _$University({required this.name, this.id, String? $type})
      : $type = $type ?? 'university';

  factory _$University.fromJson(Map<String, dynamic> json) =>
      _$$UniversityFromJson(json);

  @override
  final String name;
  @override
  final int? id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.university(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is University &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $UniversityCopyWith<University> get copyWith =>
      _$UniversityCopyWithImpl<University>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return university(name, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return university?.call(name, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (university != null) {
      return university(name, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return university(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return university?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (university != null) {
      return university(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UniversityToJson(this);
  }
}

abstract class University implements IndividualModel {
  const factory University({required String name, int? id}) = _$University;

  factory University.fromJson(Map<String, dynamic> json) =
      _$University.fromJson;

  String get name;
  int? get id;
  @JsonKey(ignore: true)
  $UniversityCopyWith<University> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call({String name, String code});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> extends _$IndividualModelCopyWithImpl<$Res>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(Country _value, $Res Function(Country) _then)
      : super(_value, (v) => _then(v as Country));

  @override
  Country get _value => super._value as Country;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(Country(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Country implements Country {
  const _$Country({required this.name, required this.code, String? $type})
      : $type = $type ?? 'country';

  factory _$Country.fromJson(Map<String, dynamic> json) =>
      _$$CountryFromJson(json);

  @override
  final String name;
  @override
  final String code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IndividualModel.country(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Country &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  $CountryCopyWith<Country> get copyWith =>
      _$CountryCopyWithImpl<Country>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)
        individual,
    required TResult Function(String name, int? id) degree,
    required TResult Function(String username, String email) generatedEmail,
    required TResult Function(String name) company,
    required TResult Function(String name) teacher,
    required TResult Function(
            int? id, @JsonKey(name: 'Country') Country country)
        location,
    required TResult Function(String name, int? id) major,
    required TResult Function(String name) state,
    required TResult Function(String name, int? id) minor,
    required TResult Function(String name, int? id) position,
    required TResult Function(String name, int? id) profession,
    required TResult Function(String name, int? id) university,
    required TResult Function(String name, String code) country,
  }) {
    return country(name, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
  }) {
    return country?.call(name, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firsName,
            String lastName,
            String accountStatus,
            String phoneNumber,
            String realPhoneNumber,
            String userName,
            String passWord,
            String email,
            int addressId,
            Profession primaryProfession,
            University universityName,
            Degree degreeName,
            Major majorName,
            Minor minorName,
            DateTime startDate,
            DateTime endDate)?
        individual,
    TResult Function(String name, int? id)? degree,
    TResult Function(String username, String email)? generatedEmail,
    TResult Function(String name)? company,
    TResult Function(String name)? teacher,
    TResult Function(int? id, @JsonKey(name: 'Country') Country country)?
        location,
    TResult Function(String name, int? id)? major,
    TResult Function(String name)? state,
    TResult Function(String name, int? id)? minor,
    TResult Function(String name, int? id)? position,
    TResult Function(String name, int? id)? profession,
    TResult Function(String name, int? id)? university,
    TResult Function(String name, String code)? country,
    required TResult orElse(),
  }) {
    if (country != null) {
      return country(name, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Individual value) individual,
    required TResult Function(Degree value) degree,
    required TResult Function(GeneratedEmail value) generatedEmail,
    required TResult Function(Company value) company,
    required TResult Function(Teacher value) teacher,
    required TResult Function(Location value) location,
    required TResult Function(Major value) major,
    required TResult Function(State value) state,
    required TResult Function(Minor value) minor,
    required TResult Function(Position value) position,
    required TResult Function(Profession value) profession,
    required TResult Function(University value) university,
    required TResult Function(Country value) country,
  }) {
    return country(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
  }) {
    return country?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Individual value)? individual,
    TResult Function(Degree value)? degree,
    TResult Function(GeneratedEmail value)? generatedEmail,
    TResult Function(Company value)? company,
    TResult Function(Teacher value)? teacher,
    TResult Function(Location value)? location,
    TResult Function(Major value)? major,
    TResult Function(State value)? state,
    TResult Function(Minor value)? minor,
    TResult Function(Position value)? position,
    TResult Function(Profession value)? profession,
    TResult Function(University value)? university,
    TResult Function(Country value)? country,
    required TResult orElse(),
  }) {
    if (country != null) {
      return country(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryToJson(this);
  }
}

abstract class Country implements IndividualModel {
  const factory Country({required String name, required String code}) =
      _$Country;

  factory Country.fromJson(Map<String, dynamic> json) = _$Country.fromJson;

  String get name;
  String get code;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}
