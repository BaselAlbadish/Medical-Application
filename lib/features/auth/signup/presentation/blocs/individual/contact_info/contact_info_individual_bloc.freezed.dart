// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_info_individual_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactInfoIndividualEventTearOff {
  const _$ContactInfoIndividualEventTearOff();

  _EmailIsEntered emailIsEntered(String email) {
    return _EmailIsEntered(
      email,
    );
  }

  _PasswordIsEntered passwordIsEntered(String password) {
    return _PasswordIsEntered(
      password,
    );
  }

  _ConfirmedPasswordIsEntered confirmedPasswordIsEntered(
      String password, String confirmedPassword) {
    return _ConfirmedPasswordIsEntered(
      password,
      confirmedPassword,
    );
  }

  _ShowPassordIsPressed showPassordIsPressed() {
    return const _ShowPassordIsPressed();
  }

  _ShowConfirmedPassordIsPressed showConfirmedPassordIsPressed() {
    return const _ShowConfirmedPassordIsPressed();
  }

  _NextIsPressed nextIsPressed() {
    return const _NextIsPressed();
  }

  _RequestProvidedEmail requestProvidedEmail(
      String firstName, String lastName) {
    return _RequestProvidedEmail(
      firstName,
      lastName,
    );
  }

  _SendCodeVerificationToEmail sendCodeToEmailResponse(String email) {
    return _SendCodeVerificationToEmail(
      email,
    );
  }
}

/// @nodoc
const $ContactInfoIndividualEvent = _$ContactInfoIndividualEventTearOff();

/// @nodoc
mixin _$ContactInfoIndividualEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailIsEntered,
    required TResult Function(String password) passwordIsEntered,
    required TResult Function(String password, String confirmedPassword)
        confirmedPasswordIsEntered,
    required TResult Function() showPassordIsPressed,
    required TResult Function() showConfirmedPassordIsPressed,
    required TResult Function() nextIsPressed,
    required TResult Function(String firstName, String lastName)
        requestProvidedEmail,
    required TResult Function(String email) sendCodeToEmailResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailIsEntered value) emailIsEntered,
    required TResult Function(_PasswordIsEntered value) passwordIsEntered,
    required TResult Function(_ConfirmedPasswordIsEntered value)
        confirmedPasswordIsEntered,
    required TResult Function(_ShowPassordIsPressed value) showPassordIsPressed,
    required TResult Function(_ShowConfirmedPassordIsPressed value)
        showConfirmedPassordIsPressed,
    required TResult Function(_NextIsPressed value) nextIsPressed,
    required TResult Function(_RequestProvidedEmail value) requestProvidedEmail,
    required TResult Function(_SendCodeVerificationToEmail value)
        sendCodeToEmailResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInfoIndividualEventCopyWith<$Res> {
  factory $ContactInfoIndividualEventCopyWith(ContactInfoIndividualEvent value,
          $Res Function(ContactInfoIndividualEvent) then) =
      _$ContactInfoIndividualEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactInfoIndividualEventCopyWithImpl<$Res>
    implements $ContactInfoIndividualEventCopyWith<$Res> {
  _$ContactInfoIndividualEventCopyWithImpl(this._value, this._then);

  final ContactInfoIndividualEvent _value;
  // ignore: unused_field
  final $Res Function(ContactInfoIndividualEvent) _then;
}

/// @nodoc
abstract class _$EmailIsEnteredCopyWith<$Res> {
  factory _$EmailIsEnteredCopyWith(
          _EmailIsEntered value, $Res Function(_EmailIsEntered) then) =
      __$EmailIsEnteredCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailIsEnteredCopyWithImpl<$Res>
    extends _$ContactInfoIndividualEventCopyWithImpl<$Res>
    implements _$EmailIsEnteredCopyWith<$Res> {
  __$EmailIsEnteredCopyWithImpl(
      _EmailIsEntered _value, $Res Function(_EmailIsEntered) _then)
      : super(_value, (v) => _then(v as _EmailIsEntered));

  @override
  _EmailIsEntered get _value => super._value as _EmailIsEntered;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailIsEntered(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailIsEntered implements _EmailIsEntered {
  const _$_EmailIsEntered(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ContactInfoIndividualEvent.emailIsEntered(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailIsEntered &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$EmailIsEnteredCopyWith<_EmailIsEntered> get copyWith =>
      __$EmailIsEnteredCopyWithImpl<_EmailIsEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailIsEntered,
    required TResult Function(String password) passwordIsEntered,
    required TResult Function(String password, String confirmedPassword)
        confirmedPasswordIsEntered,
    required TResult Function() showPassordIsPressed,
    required TResult Function() showConfirmedPassordIsPressed,
    required TResult Function() nextIsPressed,
    required TResult Function(String firstName, String lastName)
        requestProvidedEmail,
    required TResult Function(String email) sendCodeToEmailResponse,
  }) {
    return emailIsEntered(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
  }) {
    return emailIsEntered?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (emailIsEntered != null) {
      return emailIsEntered(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailIsEntered value) emailIsEntered,
    required TResult Function(_PasswordIsEntered value) passwordIsEntered,
    required TResult Function(_ConfirmedPasswordIsEntered value)
        confirmedPasswordIsEntered,
    required TResult Function(_ShowPassordIsPressed value) showPassordIsPressed,
    required TResult Function(_ShowConfirmedPassordIsPressed value)
        showConfirmedPassordIsPressed,
    required TResult Function(_NextIsPressed value) nextIsPressed,
    required TResult Function(_RequestProvidedEmail value) requestProvidedEmail,
    required TResult Function(_SendCodeVerificationToEmail value)
        sendCodeToEmailResponse,
  }) {
    return emailIsEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
  }) {
    return emailIsEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (emailIsEntered != null) {
      return emailIsEntered(this);
    }
    return orElse();
  }
}

abstract class _EmailIsEntered implements ContactInfoIndividualEvent {
  const factory _EmailIsEntered(String email) = _$_EmailIsEntered;

  String get email;
  @JsonKey(ignore: true)
  _$EmailIsEnteredCopyWith<_EmailIsEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordIsEnteredCopyWith<$Res> {
  factory _$PasswordIsEnteredCopyWith(
          _PasswordIsEntered value, $Res Function(_PasswordIsEntered) then) =
      __$PasswordIsEnteredCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordIsEnteredCopyWithImpl<$Res>
    extends _$ContactInfoIndividualEventCopyWithImpl<$Res>
    implements _$PasswordIsEnteredCopyWith<$Res> {
  __$PasswordIsEnteredCopyWithImpl(
      _PasswordIsEntered _value, $Res Function(_PasswordIsEntered) _then)
      : super(_value, (v) => _then(v as _PasswordIsEntered));

  @override
  _PasswordIsEntered get _value => super._value as _PasswordIsEntered;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordIsEntered(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordIsEntered implements _PasswordIsEntered {
  const _$_PasswordIsEntered(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'ContactInfoIndividualEvent.passwordIsEntered(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordIsEntered &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$PasswordIsEnteredCopyWith<_PasswordIsEntered> get copyWith =>
      __$PasswordIsEnteredCopyWithImpl<_PasswordIsEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailIsEntered,
    required TResult Function(String password) passwordIsEntered,
    required TResult Function(String password, String confirmedPassword)
        confirmedPasswordIsEntered,
    required TResult Function() showPassordIsPressed,
    required TResult Function() showConfirmedPassordIsPressed,
    required TResult Function() nextIsPressed,
    required TResult Function(String firstName, String lastName)
        requestProvidedEmail,
    required TResult Function(String email) sendCodeToEmailResponse,
  }) {
    return passwordIsEntered(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
  }) {
    return passwordIsEntered?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (passwordIsEntered != null) {
      return passwordIsEntered(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailIsEntered value) emailIsEntered,
    required TResult Function(_PasswordIsEntered value) passwordIsEntered,
    required TResult Function(_ConfirmedPasswordIsEntered value)
        confirmedPasswordIsEntered,
    required TResult Function(_ShowPassordIsPressed value) showPassordIsPressed,
    required TResult Function(_ShowConfirmedPassordIsPressed value)
        showConfirmedPassordIsPressed,
    required TResult Function(_NextIsPressed value) nextIsPressed,
    required TResult Function(_RequestProvidedEmail value) requestProvidedEmail,
    required TResult Function(_SendCodeVerificationToEmail value)
        sendCodeToEmailResponse,
  }) {
    return passwordIsEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
  }) {
    return passwordIsEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (passwordIsEntered != null) {
      return passwordIsEntered(this);
    }
    return orElse();
  }
}

abstract class _PasswordIsEntered implements ContactInfoIndividualEvent {
  const factory _PasswordIsEntered(String password) = _$_PasswordIsEntered;

  String get password;
  @JsonKey(ignore: true)
  _$PasswordIsEnteredCopyWith<_PasswordIsEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmedPasswordIsEnteredCopyWith<$Res> {
  factory _$ConfirmedPasswordIsEnteredCopyWith(
          _ConfirmedPasswordIsEntered value,
          $Res Function(_ConfirmedPasswordIsEntered) then) =
      __$ConfirmedPasswordIsEnteredCopyWithImpl<$Res>;
  $Res call({String password, String confirmedPassword});
}

/// @nodoc
class __$ConfirmedPasswordIsEnteredCopyWithImpl<$Res>
    extends _$ContactInfoIndividualEventCopyWithImpl<$Res>
    implements _$ConfirmedPasswordIsEnteredCopyWith<$Res> {
  __$ConfirmedPasswordIsEnteredCopyWithImpl(_ConfirmedPasswordIsEntered _value,
      $Res Function(_ConfirmedPasswordIsEntered) _then)
      : super(_value, (v) => _then(v as _ConfirmedPasswordIsEntered));

  @override
  _ConfirmedPasswordIsEntered get _value =>
      super._value as _ConfirmedPasswordIsEntered;

  @override
  $Res call({
    Object? password = freezed,
    Object? confirmedPassword = freezed,
  }) {
    return _then(_ConfirmedPasswordIsEntered(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmedPasswordIsEntered implements _ConfirmedPasswordIsEntered {
  const _$_ConfirmedPasswordIsEntered(this.password, this.confirmedPassword);

  @override
  final String password;
  @override
  final String confirmedPassword;

  @override
  String toString() {
    return 'ContactInfoIndividualEvent.confirmedPasswordIsEntered(password: $password, confirmedPassword: $confirmedPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmedPasswordIsEntered &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmedPassword, confirmedPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmedPassword));

  @JsonKey(ignore: true)
  @override
  _$ConfirmedPasswordIsEnteredCopyWith<_ConfirmedPasswordIsEntered>
      get copyWith => __$ConfirmedPasswordIsEnteredCopyWithImpl<
          _ConfirmedPasswordIsEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailIsEntered,
    required TResult Function(String password) passwordIsEntered,
    required TResult Function(String password, String confirmedPassword)
        confirmedPasswordIsEntered,
    required TResult Function() showPassordIsPressed,
    required TResult Function() showConfirmedPassordIsPressed,
    required TResult Function() nextIsPressed,
    required TResult Function(String firstName, String lastName)
        requestProvidedEmail,
    required TResult Function(String email) sendCodeToEmailResponse,
  }) {
    return confirmedPasswordIsEntered(password, confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
  }) {
    return confirmedPasswordIsEntered?.call(password, confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (confirmedPasswordIsEntered != null) {
      return confirmedPasswordIsEntered(password, confirmedPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailIsEntered value) emailIsEntered,
    required TResult Function(_PasswordIsEntered value) passwordIsEntered,
    required TResult Function(_ConfirmedPasswordIsEntered value)
        confirmedPasswordIsEntered,
    required TResult Function(_ShowPassordIsPressed value) showPassordIsPressed,
    required TResult Function(_ShowConfirmedPassordIsPressed value)
        showConfirmedPassordIsPressed,
    required TResult Function(_NextIsPressed value) nextIsPressed,
    required TResult Function(_RequestProvidedEmail value) requestProvidedEmail,
    required TResult Function(_SendCodeVerificationToEmail value)
        sendCodeToEmailResponse,
  }) {
    return confirmedPasswordIsEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
  }) {
    return confirmedPasswordIsEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (confirmedPasswordIsEntered != null) {
      return confirmedPasswordIsEntered(this);
    }
    return orElse();
  }
}

abstract class _ConfirmedPasswordIsEntered
    implements ContactInfoIndividualEvent {
  const factory _ConfirmedPasswordIsEntered(
          String password, String confirmedPassword) =
      _$_ConfirmedPasswordIsEntered;

  String get password;
  String get confirmedPassword;
  @JsonKey(ignore: true)
  _$ConfirmedPasswordIsEnteredCopyWith<_ConfirmedPasswordIsEntered>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowPassordIsPressedCopyWith<$Res> {
  factory _$ShowPassordIsPressedCopyWith(_ShowPassordIsPressed value,
          $Res Function(_ShowPassordIsPressed) then) =
      __$ShowPassordIsPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowPassordIsPressedCopyWithImpl<$Res>
    extends _$ContactInfoIndividualEventCopyWithImpl<$Res>
    implements _$ShowPassordIsPressedCopyWith<$Res> {
  __$ShowPassordIsPressedCopyWithImpl(
      _ShowPassordIsPressed _value, $Res Function(_ShowPassordIsPressed) _then)
      : super(_value, (v) => _then(v as _ShowPassordIsPressed));

  @override
  _ShowPassordIsPressed get _value => super._value as _ShowPassordIsPressed;
}

/// @nodoc

class _$_ShowPassordIsPressed implements _ShowPassordIsPressed {
  const _$_ShowPassordIsPressed();

  @override
  String toString() {
    return 'ContactInfoIndividualEvent.showPassordIsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShowPassordIsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailIsEntered,
    required TResult Function(String password) passwordIsEntered,
    required TResult Function(String password, String confirmedPassword)
        confirmedPasswordIsEntered,
    required TResult Function() showPassordIsPressed,
    required TResult Function() showConfirmedPassordIsPressed,
    required TResult Function() nextIsPressed,
    required TResult Function(String firstName, String lastName)
        requestProvidedEmail,
    required TResult Function(String email) sendCodeToEmailResponse,
  }) {
    return showPassordIsPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
  }) {
    return showPassordIsPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (showPassordIsPressed != null) {
      return showPassordIsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailIsEntered value) emailIsEntered,
    required TResult Function(_PasswordIsEntered value) passwordIsEntered,
    required TResult Function(_ConfirmedPasswordIsEntered value)
        confirmedPasswordIsEntered,
    required TResult Function(_ShowPassordIsPressed value) showPassordIsPressed,
    required TResult Function(_ShowConfirmedPassordIsPressed value)
        showConfirmedPassordIsPressed,
    required TResult Function(_NextIsPressed value) nextIsPressed,
    required TResult Function(_RequestProvidedEmail value) requestProvidedEmail,
    required TResult Function(_SendCodeVerificationToEmail value)
        sendCodeToEmailResponse,
  }) {
    return showPassordIsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
  }) {
    return showPassordIsPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (showPassordIsPressed != null) {
      return showPassordIsPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowPassordIsPressed implements ContactInfoIndividualEvent {
  const factory _ShowPassordIsPressed() = _$_ShowPassordIsPressed;
}

/// @nodoc
abstract class _$ShowConfirmedPassordIsPressedCopyWith<$Res> {
  factory _$ShowConfirmedPassordIsPressedCopyWith(
          _ShowConfirmedPassordIsPressed value,
          $Res Function(_ShowConfirmedPassordIsPressed) then) =
      __$ShowConfirmedPassordIsPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowConfirmedPassordIsPressedCopyWithImpl<$Res>
    extends _$ContactInfoIndividualEventCopyWithImpl<$Res>
    implements _$ShowConfirmedPassordIsPressedCopyWith<$Res> {
  __$ShowConfirmedPassordIsPressedCopyWithImpl(
      _ShowConfirmedPassordIsPressed _value,
      $Res Function(_ShowConfirmedPassordIsPressed) _then)
      : super(_value, (v) => _then(v as _ShowConfirmedPassordIsPressed));

  @override
  _ShowConfirmedPassordIsPressed get _value =>
      super._value as _ShowConfirmedPassordIsPressed;
}

/// @nodoc

class _$_ShowConfirmedPassordIsPressed
    implements _ShowConfirmedPassordIsPressed {
  const _$_ShowConfirmedPassordIsPressed();

  @override
  String toString() {
    return 'ContactInfoIndividualEvent.showConfirmedPassordIsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowConfirmedPassordIsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailIsEntered,
    required TResult Function(String password) passwordIsEntered,
    required TResult Function(String password, String confirmedPassword)
        confirmedPasswordIsEntered,
    required TResult Function() showPassordIsPressed,
    required TResult Function() showConfirmedPassordIsPressed,
    required TResult Function() nextIsPressed,
    required TResult Function(String firstName, String lastName)
        requestProvidedEmail,
    required TResult Function(String email) sendCodeToEmailResponse,
  }) {
    return showConfirmedPassordIsPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
  }) {
    return showConfirmedPassordIsPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (showConfirmedPassordIsPressed != null) {
      return showConfirmedPassordIsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailIsEntered value) emailIsEntered,
    required TResult Function(_PasswordIsEntered value) passwordIsEntered,
    required TResult Function(_ConfirmedPasswordIsEntered value)
        confirmedPasswordIsEntered,
    required TResult Function(_ShowPassordIsPressed value) showPassordIsPressed,
    required TResult Function(_ShowConfirmedPassordIsPressed value)
        showConfirmedPassordIsPressed,
    required TResult Function(_NextIsPressed value) nextIsPressed,
    required TResult Function(_RequestProvidedEmail value) requestProvidedEmail,
    required TResult Function(_SendCodeVerificationToEmail value)
        sendCodeToEmailResponse,
  }) {
    return showConfirmedPassordIsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
  }) {
    return showConfirmedPassordIsPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (showConfirmedPassordIsPressed != null) {
      return showConfirmedPassordIsPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowConfirmedPassordIsPressed
    implements ContactInfoIndividualEvent {
  const factory _ShowConfirmedPassordIsPressed() =
      _$_ShowConfirmedPassordIsPressed;
}

/// @nodoc
abstract class _$NextIsPressedCopyWith<$Res> {
  factory _$NextIsPressedCopyWith(
          _NextIsPressed value, $Res Function(_NextIsPressed) then) =
      __$NextIsPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextIsPressedCopyWithImpl<$Res>
    extends _$ContactInfoIndividualEventCopyWithImpl<$Res>
    implements _$NextIsPressedCopyWith<$Res> {
  __$NextIsPressedCopyWithImpl(
      _NextIsPressed _value, $Res Function(_NextIsPressed) _then)
      : super(_value, (v) => _then(v as _NextIsPressed));

  @override
  _NextIsPressed get _value => super._value as _NextIsPressed;
}

/// @nodoc

class _$_NextIsPressed implements _NextIsPressed {
  const _$_NextIsPressed();

  @override
  String toString() {
    return 'ContactInfoIndividualEvent.nextIsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NextIsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailIsEntered,
    required TResult Function(String password) passwordIsEntered,
    required TResult Function(String password, String confirmedPassword)
        confirmedPasswordIsEntered,
    required TResult Function() showPassordIsPressed,
    required TResult Function() showConfirmedPassordIsPressed,
    required TResult Function() nextIsPressed,
    required TResult Function(String firstName, String lastName)
        requestProvidedEmail,
    required TResult Function(String email) sendCodeToEmailResponse,
  }) {
    return nextIsPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
  }) {
    return nextIsPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (nextIsPressed != null) {
      return nextIsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailIsEntered value) emailIsEntered,
    required TResult Function(_PasswordIsEntered value) passwordIsEntered,
    required TResult Function(_ConfirmedPasswordIsEntered value)
        confirmedPasswordIsEntered,
    required TResult Function(_ShowPassordIsPressed value) showPassordIsPressed,
    required TResult Function(_ShowConfirmedPassordIsPressed value)
        showConfirmedPassordIsPressed,
    required TResult Function(_NextIsPressed value) nextIsPressed,
    required TResult Function(_RequestProvidedEmail value) requestProvidedEmail,
    required TResult Function(_SendCodeVerificationToEmail value)
        sendCodeToEmailResponse,
  }) {
    return nextIsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
  }) {
    return nextIsPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (nextIsPressed != null) {
      return nextIsPressed(this);
    }
    return orElse();
  }
}

abstract class _NextIsPressed implements ContactInfoIndividualEvent {
  const factory _NextIsPressed() = _$_NextIsPressed;
}

/// @nodoc
abstract class _$RequestProvidedEmailCopyWith<$Res> {
  factory _$RequestProvidedEmailCopyWith(_RequestProvidedEmail value,
          $Res Function(_RequestProvidedEmail) then) =
      __$RequestProvidedEmailCopyWithImpl<$Res>;
  $Res call({String firstName, String lastName});
}

/// @nodoc
class __$RequestProvidedEmailCopyWithImpl<$Res>
    extends _$ContactInfoIndividualEventCopyWithImpl<$Res>
    implements _$RequestProvidedEmailCopyWith<$Res> {
  __$RequestProvidedEmailCopyWithImpl(
      _RequestProvidedEmail _value, $Res Function(_RequestProvidedEmail) _then)
      : super(_value, (v) => _then(v as _RequestProvidedEmail));

  @override
  _RequestProvidedEmail get _value => super._value as _RequestProvidedEmail;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_RequestProvidedEmail(
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequestProvidedEmail implements _RequestProvidedEmail {
  const _$_RequestProvidedEmail(this.firstName, this.lastName);

  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'ContactInfoIndividualEvent.requestProvidedEmail(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestProvidedEmail &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName));

  @JsonKey(ignore: true)
  @override
  _$RequestProvidedEmailCopyWith<_RequestProvidedEmail> get copyWith =>
      __$RequestProvidedEmailCopyWithImpl<_RequestProvidedEmail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailIsEntered,
    required TResult Function(String password) passwordIsEntered,
    required TResult Function(String password, String confirmedPassword)
        confirmedPasswordIsEntered,
    required TResult Function() showPassordIsPressed,
    required TResult Function() showConfirmedPassordIsPressed,
    required TResult Function() nextIsPressed,
    required TResult Function(String firstName, String lastName)
        requestProvidedEmail,
    required TResult Function(String email) sendCodeToEmailResponse,
  }) {
    return requestProvidedEmail(firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
  }) {
    return requestProvidedEmail?.call(firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (requestProvidedEmail != null) {
      return requestProvidedEmail(firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailIsEntered value) emailIsEntered,
    required TResult Function(_PasswordIsEntered value) passwordIsEntered,
    required TResult Function(_ConfirmedPasswordIsEntered value)
        confirmedPasswordIsEntered,
    required TResult Function(_ShowPassordIsPressed value) showPassordIsPressed,
    required TResult Function(_ShowConfirmedPassordIsPressed value)
        showConfirmedPassordIsPressed,
    required TResult Function(_NextIsPressed value) nextIsPressed,
    required TResult Function(_RequestProvidedEmail value) requestProvidedEmail,
    required TResult Function(_SendCodeVerificationToEmail value)
        sendCodeToEmailResponse,
  }) {
    return requestProvidedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
  }) {
    return requestProvidedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (requestProvidedEmail != null) {
      return requestProvidedEmail(this);
    }
    return orElse();
  }
}

abstract class _RequestProvidedEmail implements ContactInfoIndividualEvent {
  const factory _RequestProvidedEmail(String firstName, String lastName) =
      _$_RequestProvidedEmail;

  String get firstName;
  String get lastName;
  @JsonKey(ignore: true)
  _$RequestProvidedEmailCopyWith<_RequestProvidedEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendCodeVerificationToEmailCopyWith<$Res> {
  factory _$SendCodeVerificationToEmailCopyWith(
          _SendCodeVerificationToEmail value,
          $Res Function(_SendCodeVerificationToEmail) then) =
      __$SendCodeVerificationToEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$SendCodeVerificationToEmailCopyWithImpl<$Res>
    extends _$ContactInfoIndividualEventCopyWithImpl<$Res>
    implements _$SendCodeVerificationToEmailCopyWith<$Res> {
  __$SendCodeVerificationToEmailCopyWithImpl(
      _SendCodeVerificationToEmail _value,
      $Res Function(_SendCodeVerificationToEmail) _then)
      : super(_value, (v) => _then(v as _SendCodeVerificationToEmail));

  @override
  _SendCodeVerificationToEmail get _value =>
      super._value as _SendCodeVerificationToEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_SendCodeVerificationToEmail(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendCodeVerificationToEmail implements _SendCodeVerificationToEmail {
  const _$_SendCodeVerificationToEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ContactInfoIndividualEvent.sendCodeToEmailResponse(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendCodeVerificationToEmail &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$SendCodeVerificationToEmailCopyWith<_SendCodeVerificationToEmail>
      get copyWith => __$SendCodeVerificationToEmailCopyWithImpl<
          _SendCodeVerificationToEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailIsEntered,
    required TResult Function(String password) passwordIsEntered,
    required TResult Function(String password, String confirmedPassword)
        confirmedPasswordIsEntered,
    required TResult Function() showPassordIsPressed,
    required TResult Function() showConfirmedPassordIsPressed,
    required TResult Function() nextIsPressed,
    required TResult Function(String firstName, String lastName)
        requestProvidedEmail,
    required TResult Function(String email) sendCodeToEmailResponse,
  }) {
    return sendCodeToEmailResponse(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
  }) {
    return sendCodeToEmailResponse?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailIsEntered,
    TResult Function(String password)? passwordIsEntered,
    TResult Function(String password, String confirmedPassword)?
        confirmedPasswordIsEntered,
    TResult Function()? showPassordIsPressed,
    TResult Function()? showConfirmedPassordIsPressed,
    TResult Function()? nextIsPressed,
    TResult Function(String firstName, String lastName)? requestProvidedEmail,
    TResult Function(String email)? sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (sendCodeToEmailResponse != null) {
      return sendCodeToEmailResponse(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailIsEntered value) emailIsEntered,
    required TResult Function(_PasswordIsEntered value) passwordIsEntered,
    required TResult Function(_ConfirmedPasswordIsEntered value)
        confirmedPasswordIsEntered,
    required TResult Function(_ShowPassordIsPressed value) showPassordIsPressed,
    required TResult Function(_ShowConfirmedPassordIsPressed value)
        showConfirmedPassordIsPressed,
    required TResult Function(_NextIsPressed value) nextIsPressed,
    required TResult Function(_RequestProvidedEmail value) requestProvidedEmail,
    required TResult Function(_SendCodeVerificationToEmail value)
        sendCodeToEmailResponse,
  }) {
    return sendCodeToEmailResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
  }) {
    return sendCodeToEmailResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailIsEntered value)? emailIsEntered,
    TResult Function(_PasswordIsEntered value)? passwordIsEntered,
    TResult Function(_ConfirmedPasswordIsEntered value)?
        confirmedPasswordIsEntered,
    TResult Function(_ShowPassordIsPressed value)? showPassordIsPressed,
    TResult Function(_ShowConfirmedPassordIsPressed value)?
        showConfirmedPassordIsPressed,
    TResult Function(_NextIsPressed value)? nextIsPressed,
    TResult Function(_RequestProvidedEmail value)? requestProvidedEmail,
    TResult Function(_SendCodeVerificationToEmail value)?
        sendCodeToEmailResponse,
    required TResult orElse(),
  }) {
    if (sendCodeToEmailResponse != null) {
      return sendCodeToEmailResponse(this);
    }
    return orElse();
  }
}

abstract class _SendCodeVerificationToEmail
    implements ContactInfoIndividualEvent {
  const factory _SendCodeVerificationToEmail(String email) =
      _$_SendCodeVerificationToEmail;

  String get email;
  @JsonKey(ignore: true)
  _$SendCodeVerificationToEmailCopyWith<_SendCodeVerificationToEmail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ContactInfoIndividualStateTearOff {
  const _$ContactInfoIndividualStateTearOff();

  _ContactInfoIndividualState call(
      {required bool isShowingErrorMessages,
      required Option<Either<Failure, GeneratedEmail>>
          optionOfFailureOrSuccessGeneratedEmail,
      required Either<String, Unit> emailValidationResponse,
      required String email,
      required String confirmPassword,
      required String password,
      required Either<String, Unit> passwordValidationResponse,
      required bool isShowingPassword,
      required Either<String, Unit> confirmedPassowordValidationResponse,
      required bool isShowingConfirmedPassword,
      required bool componentIsValid,
      required Option<Either<Failure, Map>> sendCodeToEmailResponse,
      required Option<Either<Failure, Map>> confirmEmailCodeResponse}) {
    return _ContactInfoIndividualState(
      isShowingErrorMessages: isShowingErrorMessages,
      optionOfFailureOrSuccessGeneratedEmail:
          optionOfFailureOrSuccessGeneratedEmail,
      emailValidationResponse: emailValidationResponse,
      email: email,
      confirmPassword: confirmPassword,
      password: password,
      passwordValidationResponse: passwordValidationResponse,
      isShowingPassword: isShowingPassword,
      confirmedPassowordValidationResponse:
          confirmedPassowordValidationResponse,
      isShowingConfirmedPassword: isShowingConfirmedPassword,
      componentIsValid: componentIsValid,
      sendCodeToEmailResponse: sendCodeToEmailResponse,
      confirmEmailCodeResponse: confirmEmailCodeResponse,
    );
  }
}

/// @nodoc
const $ContactInfoIndividualState = _$ContactInfoIndividualStateTearOff();

/// @nodoc
mixin _$ContactInfoIndividualState {
  bool get isShowingErrorMessages => throw _privateConstructorUsedError;
  Option<Either<Failure, GeneratedEmail>>
      get optionOfFailureOrSuccessGeneratedEmail =>
          throw _privateConstructorUsedError;
  Either<String, Unit> get emailValidationResponse =>
      throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  Either<String, Unit> get passwordValidationResponse =>
      throw _privateConstructorUsedError;
  bool get isShowingPassword => throw _privateConstructorUsedError;
  Either<String, Unit> get confirmedPassowordValidationResponse =>
      throw _privateConstructorUsedError;
  bool get isShowingConfirmedPassword => throw _privateConstructorUsedError;
  bool get componentIsValid =>
      throw _privateConstructorUsedError; //verification email
  Option<Either<Failure, Map>> get sendCodeToEmailResponse =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Map>> get confirmEmailCodeResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactInfoIndividualStateCopyWith<ContactInfoIndividualState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInfoIndividualStateCopyWith<$Res> {
  factory $ContactInfoIndividualStateCopyWith(ContactInfoIndividualState value,
          $Res Function(ContactInfoIndividualState) then) =
      _$ContactInfoIndividualStateCopyWithImpl<$Res>;
  $Res call(
      {bool isShowingErrorMessages,
      Option<Either<Failure, GeneratedEmail>>
          optionOfFailureOrSuccessGeneratedEmail,
      Either<String, Unit> emailValidationResponse,
      String email,
      String confirmPassword,
      String password,
      Either<String, Unit> passwordValidationResponse,
      bool isShowingPassword,
      Either<String, Unit> confirmedPassowordValidationResponse,
      bool isShowingConfirmedPassword,
      bool componentIsValid,
      Option<Either<Failure, Map>> sendCodeToEmailResponse,
      Option<Either<Failure, Map>> confirmEmailCodeResponse});
}

/// @nodoc
class _$ContactInfoIndividualStateCopyWithImpl<$Res>
    implements $ContactInfoIndividualStateCopyWith<$Res> {
  _$ContactInfoIndividualStateCopyWithImpl(this._value, this._then);

  final ContactInfoIndividualState _value;
  // ignore: unused_field
  final $Res Function(ContactInfoIndividualState) _then;

  @override
  $Res call({
    Object? isShowingErrorMessages = freezed,
    Object? optionOfFailureOrSuccessGeneratedEmail = freezed,
    Object? emailValidationResponse = freezed,
    Object? email = freezed,
    Object? confirmPassword = freezed,
    Object? password = freezed,
    Object? passwordValidationResponse = freezed,
    Object? isShowingPassword = freezed,
    Object? confirmedPassowordValidationResponse = freezed,
    Object? isShowingConfirmedPassword = freezed,
    Object? componentIsValid = freezed,
    Object? sendCodeToEmailResponse = freezed,
    Object? confirmEmailCodeResponse = freezed,
  }) {
    return _then(_value.copyWith(
      isShowingErrorMessages: isShowingErrorMessages == freezed
          ? _value.isShowingErrorMessages
          : isShowingErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfFailureOrSuccessGeneratedEmail:
          optionOfFailureOrSuccessGeneratedEmail == freezed
              ? _value.optionOfFailureOrSuccessGeneratedEmail
              : optionOfFailureOrSuccessGeneratedEmail // ignore: cast_nullable_to_non_nullable
                  as Option<Either<Failure, GeneratedEmail>>,
      emailValidationResponse: emailValidationResponse == freezed
          ? _value.emailValidationResponse
          : emailValidationResponse // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordValidationResponse: passwordValidationResponse == freezed
          ? _value.passwordValidationResponse
          : passwordValidationResponse // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      isShowingPassword: isShowingPassword == freezed
          ? _value.isShowingPassword
          : isShowingPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmedPassowordValidationResponse: confirmedPassowordValidationResponse ==
              freezed
          ? _value.confirmedPassowordValidationResponse
          : confirmedPassowordValidationResponse // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      isShowingConfirmedPassword: isShowingConfirmedPassword == freezed
          ? _value.isShowingConfirmedPassword
          : isShowingConfirmedPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      componentIsValid: componentIsValid == freezed
          ? _value.componentIsValid
          : componentIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      sendCodeToEmailResponse: sendCodeToEmailResponse == freezed
          ? _value.sendCodeToEmailResponse
          : sendCodeToEmailResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Map>>,
      confirmEmailCodeResponse: confirmEmailCodeResponse == freezed
          ? _value.confirmEmailCodeResponse
          : confirmEmailCodeResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Map>>,
    ));
  }
}

/// @nodoc
abstract class _$ContactInfoIndividualStateCopyWith<$Res>
    implements $ContactInfoIndividualStateCopyWith<$Res> {
  factory _$ContactInfoIndividualStateCopyWith(
          _ContactInfoIndividualState value,
          $Res Function(_ContactInfoIndividualState) then) =
      __$ContactInfoIndividualStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isShowingErrorMessages,
      Option<Either<Failure, GeneratedEmail>>
          optionOfFailureOrSuccessGeneratedEmail,
      Either<String, Unit> emailValidationResponse,
      String email,
      String confirmPassword,
      String password,
      Either<String, Unit> passwordValidationResponse,
      bool isShowingPassword,
      Either<String, Unit> confirmedPassowordValidationResponse,
      bool isShowingConfirmedPassword,
      bool componentIsValid,
      Option<Either<Failure, Map>> sendCodeToEmailResponse,
      Option<Either<Failure, Map>> confirmEmailCodeResponse});
}

/// @nodoc
class __$ContactInfoIndividualStateCopyWithImpl<$Res>
    extends _$ContactInfoIndividualStateCopyWithImpl<$Res>
    implements _$ContactInfoIndividualStateCopyWith<$Res> {
  __$ContactInfoIndividualStateCopyWithImpl(_ContactInfoIndividualState _value,
      $Res Function(_ContactInfoIndividualState) _then)
      : super(_value, (v) => _then(v as _ContactInfoIndividualState));

  @override
  _ContactInfoIndividualState get _value =>
      super._value as _ContactInfoIndividualState;

  @override
  $Res call({
    Object? isShowingErrorMessages = freezed,
    Object? optionOfFailureOrSuccessGeneratedEmail = freezed,
    Object? emailValidationResponse = freezed,
    Object? email = freezed,
    Object? confirmPassword = freezed,
    Object? password = freezed,
    Object? passwordValidationResponse = freezed,
    Object? isShowingPassword = freezed,
    Object? confirmedPassowordValidationResponse = freezed,
    Object? isShowingConfirmedPassword = freezed,
    Object? componentIsValid = freezed,
    Object? sendCodeToEmailResponse = freezed,
    Object? confirmEmailCodeResponse = freezed,
  }) {
    return _then(_ContactInfoIndividualState(
      isShowingErrorMessages: isShowingErrorMessages == freezed
          ? _value.isShowingErrorMessages
          : isShowingErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfFailureOrSuccessGeneratedEmail:
          optionOfFailureOrSuccessGeneratedEmail == freezed
              ? _value.optionOfFailureOrSuccessGeneratedEmail
              : optionOfFailureOrSuccessGeneratedEmail // ignore: cast_nullable_to_non_nullable
                  as Option<Either<Failure, GeneratedEmail>>,
      emailValidationResponse: emailValidationResponse == freezed
          ? _value.emailValidationResponse
          : emailValidationResponse // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordValidationResponse: passwordValidationResponse == freezed
          ? _value.passwordValidationResponse
          : passwordValidationResponse // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      isShowingPassword: isShowingPassword == freezed
          ? _value.isShowingPassword
          : isShowingPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmedPassowordValidationResponse: confirmedPassowordValidationResponse ==
              freezed
          ? _value.confirmedPassowordValidationResponse
          : confirmedPassowordValidationResponse // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      isShowingConfirmedPassword: isShowingConfirmedPassword == freezed
          ? _value.isShowingConfirmedPassword
          : isShowingConfirmedPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      componentIsValid: componentIsValid == freezed
          ? _value.componentIsValid
          : componentIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      sendCodeToEmailResponse: sendCodeToEmailResponse == freezed
          ? _value.sendCodeToEmailResponse
          : sendCodeToEmailResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Map>>,
      confirmEmailCodeResponse: confirmEmailCodeResponse == freezed
          ? _value.confirmEmailCodeResponse
          : confirmEmailCodeResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Map>>,
    ));
  }
}

/// @nodoc

class _$_ContactInfoIndividualState implements _ContactInfoIndividualState {
  const _$_ContactInfoIndividualState(
      {required this.isShowingErrorMessages,
      required this.optionOfFailureOrSuccessGeneratedEmail,
      required this.emailValidationResponse,
      required this.email,
      required this.confirmPassword,
      required this.password,
      required this.passwordValidationResponse,
      required this.isShowingPassword,
      required this.confirmedPassowordValidationResponse,
      required this.isShowingConfirmedPassword,
      required this.componentIsValid,
      required this.sendCodeToEmailResponse,
      required this.confirmEmailCodeResponse});

  @override
  final bool isShowingErrorMessages;
  @override
  final Option<Either<Failure, GeneratedEmail>>
      optionOfFailureOrSuccessGeneratedEmail;
  @override
  final Either<String, Unit> emailValidationResponse;
  @override
  final String email;
  @override
  final String confirmPassword;
  @override
  final String password;
  @override
  final Either<String, Unit> passwordValidationResponse;
  @override
  final bool isShowingPassword;
  @override
  final Either<String, Unit> confirmedPassowordValidationResponse;
  @override
  final bool isShowingConfirmedPassword;
  @override
  final bool componentIsValid;
  @override //verification email
  final Option<Either<Failure, Map>> sendCodeToEmailResponse;
  @override
  final Option<Either<Failure, Map>> confirmEmailCodeResponse;

  @override
  String toString() {
    return 'ContactInfoIndividualState(isShowingErrorMessages: $isShowingErrorMessages, optionOfFailureOrSuccessGeneratedEmail: $optionOfFailureOrSuccessGeneratedEmail, emailValidationResponse: $emailValidationResponse, email: $email, confirmPassword: $confirmPassword, password: $password, passwordValidationResponse: $passwordValidationResponse, isShowingPassword: $isShowingPassword, confirmedPassowordValidationResponse: $confirmedPassowordValidationResponse, isShowingConfirmedPassword: $isShowingConfirmedPassword, componentIsValid: $componentIsValid, sendCodeToEmailResponse: $sendCodeToEmailResponse, confirmEmailCodeResponse: $confirmEmailCodeResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactInfoIndividualState &&
            const DeepCollectionEquality()
                .equals(other.isShowingErrorMessages, isShowingErrorMessages) &&
            const DeepCollectionEquality().equals(
                other.optionOfFailureOrSuccessGeneratedEmail,
                optionOfFailureOrSuccessGeneratedEmail) &&
            const DeepCollectionEquality().equals(
                other.emailValidationResponse, emailValidationResponse) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(
                other.passwordValidationResponse, passwordValidationResponse) &&
            const DeepCollectionEquality()
                .equals(other.isShowingPassword, isShowingPassword) &&
            const DeepCollectionEquality().equals(
                other.confirmedPassowordValidationResponse,
                confirmedPassowordValidationResponse) &&
            const DeepCollectionEquality().equals(
                other.isShowingConfirmedPassword, isShowingConfirmedPassword) &&
            const DeepCollectionEquality()
                .equals(other.componentIsValid, componentIsValid) &&
            const DeepCollectionEquality().equals(
                other.sendCodeToEmailResponse, sendCodeToEmailResponse) &&
            const DeepCollectionEquality().equals(
                other.confirmEmailCodeResponse, confirmEmailCodeResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isShowingErrorMessages),
      const DeepCollectionEquality()
          .hash(optionOfFailureOrSuccessGeneratedEmail),
      const DeepCollectionEquality().hash(emailValidationResponse),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(passwordValidationResponse),
      const DeepCollectionEquality().hash(isShowingPassword),
      const DeepCollectionEquality().hash(confirmedPassowordValidationResponse),
      const DeepCollectionEquality().hash(isShowingConfirmedPassword),
      const DeepCollectionEquality().hash(componentIsValid),
      const DeepCollectionEquality().hash(sendCodeToEmailResponse),
      const DeepCollectionEquality().hash(confirmEmailCodeResponse));

  @JsonKey(ignore: true)
  @override
  _$ContactInfoIndividualStateCopyWith<_ContactInfoIndividualState>
      get copyWith => __$ContactInfoIndividualStateCopyWithImpl<
          _ContactInfoIndividualState>(this, _$identity);
}

abstract class _ContactInfoIndividualState
    implements ContactInfoIndividualState {
  const factory _ContactInfoIndividualState(
          {required bool isShowingErrorMessages,
          required Option<Either<Failure, GeneratedEmail>>
              optionOfFailureOrSuccessGeneratedEmail,
          required Either<String, Unit> emailValidationResponse,
          required String email,
          required String confirmPassword,
          required String password,
          required Either<String, Unit> passwordValidationResponse,
          required bool isShowingPassword,
          required Either<String, Unit> confirmedPassowordValidationResponse,
          required bool isShowingConfirmedPassword,
          required bool componentIsValid,
          required Option<Either<Failure, Map>> sendCodeToEmailResponse,
          required Option<Either<Failure, Map>> confirmEmailCodeResponse}) =
      _$_ContactInfoIndividualState;

  @override
  bool get isShowingErrorMessages;
  @override
  Option<Either<Failure, GeneratedEmail>>
      get optionOfFailureOrSuccessGeneratedEmail;
  @override
  Either<String, Unit> get emailValidationResponse;
  @override
  String get email;
  @override
  String get confirmPassword;
  @override
  String get password;
  @override
  Either<String, Unit> get passwordValidationResponse;
  @override
  bool get isShowingPassword;
  @override
  Either<String, Unit> get confirmedPassowordValidationResponse;
  @override
  bool get isShowingConfirmedPassword;
  @override
  bool get componentIsValid;
  @override //verification email
  Option<Either<Failure, Map>> get sendCodeToEmailResponse;
  @override
  Option<Either<Failure, Map>> get confirmEmailCodeResponse;
  @override
  @JsonKey(ignore: true)
  _$ContactInfoIndividualStateCopyWith<_ContactInfoIndividualState>
      get copyWith => throw _privateConstructorUsedError;
}
