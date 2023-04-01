// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  _ClickOnSignIn clickOnButtonSignIn(String email, String password) {
    return _ClickOnSignIn(
      email,
      password,
    );
  }

  _ClickOnRememberMe clickOnButtonRememberMe(bool isActive) {
    return _ClickOnRememberMe(
      isActive,
    );
  }

  _SecretFieldPassword secretFieldPassword(bool isActive) {
    return _SecretFieldPassword(
      isActive,
    );
  }

  _EmailValidation emailValidation(String validateEmail) {
    return _EmailValidation(
      validateEmail,
    );
  }

  _PasswordValidation passwordValidation(String validateEmail) {
    return _PasswordValidation(
      validateEmail,
    );
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        clickOnButtonSignIn,
    required TResult Function(bool isActive) clickOnButtonRememberMe,
    required TResult Function(bool isActive) secretFieldPassword,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String validateEmail) passwordValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickOnSignIn value) clickOnButtonSignIn,
    required TResult Function(_ClickOnRememberMe value) clickOnButtonRememberMe,
    required TResult Function(_SecretFieldPassword value) secretFieldPassword,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_PasswordValidation value) passwordValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class _$ClickOnSignInCopyWith<$Res> {
  factory _$ClickOnSignInCopyWith(
          _ClickOnSignIn value, $Res Function(_ClickOnSignIn) then) =
      __$ClickOnSignInCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$ClickOnSignInCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$ClickOnSignInCopyWith<$Res> {
  __$ClickOnSignInCopyWithImpl(
      _ClickOnSignIn _value, $Res Function(_ClickOnSignIn) _then)
      : super(_value, (v) => _then(v as _ClickOnSignIn));

  @override
  _ClickOnSignIn get _value => super._value as _ClickOnSignIn;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_ClickOnSignIn(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClickOnSignIn implements _ClickOnSignIn {
  const _$_ClickOnSignIn(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.clickOnButtonSignIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClickOnSignIn &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$ClickOnSignInCopyWith<_ClickOnSignIn> get copyWith =>
      __$ClickOnSignInCopyWithImpl<_ClickOnSignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        clickOnButtonSignIn,
    required TResult Function(bool isActive) clickOnButtonRememberMe,
    required TResult Function(bool isActive) secretFieldPassword,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String validateEmail) passwordValidation,
  }) {
    return clickOnButtonSignIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
  }) {
    return clickOnButtonSignIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
    required TResult orElse(),
  }) {
    if (clickOnButtonSignIn != null) {
      return clickOnButtonSignIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickOnSignIn value) clickOnButtonSignIn,
    required TResult Function(_ClickOnRememberMe value) clickOnButtonRememberMe,
    required TResult Function(_SecretFieldPassword value) secretFieldPassword,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_PasswordValidation value) passwordValidation,
  }) {
    return clickOnButtonSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
  }) {
    return clickOnButtonSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
    required TResult orElse(),
  }) {
    if (clickOnButtonSignIn != null) {
      return clickOnButtonSignIn(this);
    }
    return orElse();
  }
}

abstract class _ClickOnSignIn implements SignInEvent {
  const factory _ClickOnSignIn(String email, String password) =
      _$_ClickOnSignIn;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$ClickOnSignInCopyWith<_ClickOnSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClickOnRememberMeCopyWith<$Res> {
  factory _$ClickOnRememberMeCopyWith(
          _ClickOnRememberMe value, $Res Function(_ClickOnRememberMe) then) =
      __$ClickOnRememberMeCopyWithImpl<$Res>;
  $Res call({bool isActive});
}

/// @nodoc
class __$ClickOnRememberMeCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$ClickOnRememberMeCopyWith<$Res> {
  __$ClickOnRememberMeCopyWithImpl(
      _ClickOnRememberMe _value, $Res Function(_ClickOnRememberMe) _then)
      : super(_value, (v) => _then(v as _ClickOnRememberMe));

  @override
  _ClickOnRememberMe get _value => super._value as _ClickOnRememberMe;

  @override
  $Res call({
    Object? isActive = freezed,
  }) {
    return _then(_ClickOnRememberMe(
      isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClickOnRememberMe implements _ClickOnRememberMe {
  const _$_ClickOnRememberMe(this.isActive);

  @override
  final bool isActive;

  @override
  String toString() {
    return 'SignInEvent.clickOnButtonRememberMe(isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClickOnRememberMe &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$ClickOnRememberMeCopyWith<_ClickOnRememberMe> get copyWith =>
      __$ClickOnRememberMeCopyWithImpl<_ClickOnRememberMe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        clickOnButtonSignIn,
    required TResult Function(bool isActive) clickOnButtonRememberMe,
    required TResult Function(bool isActive) secretFieldPassword,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String validateEmail) passwordValidation,
  }) {
    return clickOnButtonRememberMe(isActive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
  }) {
    return clickOnButtonRememberMe?.call(isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
    required TResult orElse(),
  }) {
    if (clickOnButtonRememberMe != null) {
      return clickOnButtonRememberMe(isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickOnSignIn value) clickOnButtonSignIn,
    required TResult Function(_ClickOnRememberMe value) clickOnButtonRememberMe,
    required TResult Function(_SecretFieldPassword value) secretFieldPassword,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_PasswordValidation value) passwordValidation,
  }) {
    return clickOnButtonRememberMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
  }) {
    return clickOnButtonRememberMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
    required TResult orElse(),
  }) {
    if (clickOnButtonRememberMe != null) {
      return clickOnButtonRememberMe(this);
    }
    return orElse();
  }
}

abstract class _ClickOnRememberMe implements SignInEvent {
  const factory _ClickOnRememberMe(bool isActive) = _$_ClickOnRememberMe;

  bool get isActive;
  @JsonKey(ignore: true)
  _$ClickOnRememberMeCopyWith<_ClickOnRememberMe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SecretFieldPasswordCopyWith<$Res> {
  factory _$SecretFieldPasswordCopyWith(_SecretFieldPassword value,
          $Res Function(_SecretFieldPassword) then) =
      __$SecretFieldPasswordCopyWithImpl<$Res>;
  $Res call({bool isActive});
}

/// @nodoc
class __$SecretFieldPasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$SecretFieldPasswordCopyWith<$Res> {
  __$SecretFieldPasswordCopyWithImpl(
      _SecretFieldPassword _value, $Res Function(_SecretFieldPassword) _then)
      : super(_value, (v) => _then(v as _SecretFieldPassword));

  @override
  _SecretFieldPassword get _value => super._value as _SecretFieldPassword;

  @override
  $Res call({
    Object? isActive = freezed,
  }) {
    return _then(_SecretFieldPassword(
      isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SecretFieldPassword implements _SecretFieldPassword {
  const _$_SecretFieldPassword(this.isActive);

  @override
  final bool isActive;

  @override
  String toString() {
    return 'SignInEvent.secretFieldPassword(isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SecretFieldPassword &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$SecretFieldPasswordCopyWith<_SecretFieldPassword> get copyWith =>
      __$SecretFieldPasswordCopyWithImpl<_SecretFieldPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        clickOnButtonSignIn,
    required TResult Function(bool isActive) clickOnButtonRememberMe,
    required TResult Function(bool isActive) secretFieldPassword,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String validateEmail) passwordValidation,
  }) {
    return secretFieldPassword(isActive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
  }) {
    return secretFieldPassword?.call(isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
    required TResult orElse(),
  }) {
    if (secretFieldPassword != null) {
      return secretFieldPassword(isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickOnSignIn value) clickOnButtonSignIn,
    required TResult Function(_ClickOnRememberMe value) clickOnButtonRememberMe,
    required TResult Function(_SecretFieldPassword value) secretFieldPassword,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_PasswordValidation value) passwordValidation,
  }) {
    return secretFieldPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
  }) {
    return secretFieldPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
    required TResult orElse(),
  }) {
    if (secretFieldPassword != null) {
      return secretFieldPassword(this);
    }
    return orElse();
  }
}

abstract class _SecretFieldPassword implements SignInEvent {
  const factory _SecretFieldPassword(bool isActive) = _$_SecretFieldPassword;

  bool get isActive;
  @JsonKey(ignore: true)
  _$SecretFieldPasswordCopyWith<_SecretFieldPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailValidationCopyWith<$Res> {
  factory _$EmailValidationCopyWith(
          _EmailValidation value, $Res Function(_EmailValidation) then) =
      __$EmailValidationCopyWithImpl<$Res>;
  $Res call({String validateEmail});
}

/// @nodoc
class __$EmailValidationCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$EmailValidationCopyWith<$Res> {
  __$EmailValidationCopyWithImpl(
      _EmailValidation _value, $Res Function(_EmailValidation) _then)
      : super(_value, (v) => _then(v as _EmailValidation));

  @override
  _EmailValidation get _value => super._value as _EmailValidation;

  @override
  $Res call({
    Object? validateEmail = freezed,
  }) {
    return _then(_EmailValidation(
      validateEmail == freezed
          ? _value.validateEmail
          : validateEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailValidation implements _EmailValidation {
  const _$_EmailValidation(this.validateEmail);

  @override
  final String validateEmail;

  @override
  String toString() {
    return 'SignInEvent.emailValidation(validateEmail: $validateEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailValidation &&
            const DeepCollectionEquality()
                .equals(other.validateEmail, validateEmail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(validateEmail));

  @JsonKey(ignore: true)
  @override
  _$EmailValidationCopyWith<_EmailValidation> get copyWith =>
      __$EmailValidationCopyWithImpl<_EmailValidation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        clickOnButtonSignIn,
    required TResult Function(bool isActive) clickOnButtonRememberMe,
    required TResult Function(bool isActive) secretFieldPassword,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String validateEmail) passwordValidation,
  }) {
    return emailValidation(validateEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
  }) {
    return emailValidation?.call(validateEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
    required TResult orElse(),
  }) {
    if (emailValidation != null) {
      return emailValidation(validateEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickOnSignIn value) clickOnButtonSignIn,
    required TResult Function(_ClickOnRememberMe value) clickOnButtonRememberMe,
    required TResult Function(_SecretFieldPassword value) secretFieldPassword,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_PasswordValidation value) passwordValidation,
  }) {
    return emailValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
  }) {
    return emailValidation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
    required TResult orElse(),
  }) {
    if (emailValidation != null) {
      return emailValidation(this);
    }
    return orElse();
  }
}

abstract class _EmailValidation implements SignInEvent {
  const factory _EmailValidation(String validateEmail) = _$_EmailValidation;

  String get validateEmail;
  @JsonKey(ignore: true)
  _$EmailValidationCopyWith<_EmailValidation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordValidationCopyWith<$Res> {
  factory _$PasswordValidationCopyWith(
          _PasswordValidation value, $Res Function(_PasswordValidation) then) =
      __$PasswordValidationCopyWithImpl<$Res>;
  $Res call({String validateEmail});
}

/// @nodoc
class __$PasswordValidationCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$PasswordValidationCopyWith<$Res> {
  __$PasswordValidationCopyWithImpl(
      _PasswordValidation _value, $Res Function(_PasswordValidation) _then)
      : super(_value, (v) => _then(v as _PasswordValidation));

  @override
  _PasswordValidation get _value => super._value as _PasswordValidation;

  @override
  $Res call({
    Object? validateEmail = freezed,
  }) {
    return _then(_PasswordValidation(
      validateEmail == freezed
          ? _value.validateEmail
          : validateEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordValidation implements _PasswordValidation {
  const _$_PasswordValidation(this.validateEmail);

  @override
  final String validateEmail;

  @override
  String toString() {
    return 'SignInEvent.passwordValidation(validateEmail: $validateEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordValidation &&
            const DeepCollectionEquality()
                .equals(other.validateEmail, validateEmail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(validateEmail));

  @JsonKey(ignore: true)
  @override
  _$PasswordValidationCopyWith<_PasswordValidation> get copyWith =>
      __$PasswordValidationCopyWithImpl<_PasswordValidation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        clickOnButtonSignIn,
    required TResult Function(bool isActive) clickOnButtonRememberMe,
    required TResult Function(bool isActive) secretFieldPassword,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String validateEmail) passwordValidation,
  }) {
    return passwordValidation(validateEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
  }) {
    return passwordValidation?.call(validateEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? clickOnButtonSignIn,
    TResult Function(bool isActive)? clickOnButtonRememberMe,
    TResult Function(bool isActive)? secretFieldPassword,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String validateEmail)? passwordValidation,
    required TResult orElse(),
  }) {
    if (passwordValidation != null) {
      return passwordValidation(validateEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickOnSignIn value) clickOnButtonSignIn,
    required TResult Function(_ClickOnRememberMe value) clickOnButtonRememberMe,
    required TResult Function(_SecretFieldPassword value) secretFieldPassword,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_PasswordValidation value) passwordValidation,
  }) {
    return passwordValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
  }) {
    return passwordValidation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickOnSignIn value)? clickOnButtonSignIn,
    TResult Function(_ClickOnRememberMe value)? clickOnButtonRememberMe,
    TResult Function(_SecretFieldPassword value)? secretFieldPassword,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_PasswordValidation value)? passwordValidation,
    required TResult orElse(),
  }) {
    if (passwordValidation != null) {
      return passwordValidation(this);
    }
    return orElse();
  }
}

abstract class _PasswordValidation implements SignInEvent {
  const factory _PasswordValidation(String validateEmail) =
      _$_PasswordValidation;

  String get validateEmail;
  @JsonKey(ignore: true)
  _$PasswordValidationCopyWith<_PasswordValidation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {required bool loading,
      required bool rememberMe,
      required bool secretField,
      required Either<String, Unit> errorMessageEmail,
      required Either<String, Unit> errorMessagePassword,
      required Option<Either<Failure, Map>> signInResponse}) {
    return _SignInState(
      loading: loading,
      rememberMe: rememberMe,
      secretField: secretField,
      errorMessageEmail: errorMessageEmail,
      errorMessagePassword: errorMessagePassword,
      signInResponse: signInResponse,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  bool get loading => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  bool get secretField => throw _privateConstructorUsedError;
  Either<String, Unit> get errorMessageEmail =>
      throw _privateConstructorUsedError;
  Either<String, Unit> get errorMessagePassword =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Map>> get signInResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      bool rememberMe,
      bool secretField,
      Either<String, Unit> errorMessageEmail,
      Either<String, Unit> errorMessagePassword,
      Option<Either<Failure, Map>> signInResponse});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? rememberMe = freezed,
    Object? secretField = freezed,
    Object? errorMessageEmail = freezed,
    Object? errorMessagePassword = freezed,
    Object? signInResponse = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      rememberMe: rememberMe == freezed
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      secretField: secretField == freezed
          ? _value.secretField
          : secretField // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessageEmail: errorMessageEmail == freezed
          ? _value.errorMessageEmail
          : errorMessageEmail // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      errorMessagePassword: errorMessagePassword == freezed
          ? _value.errorMessagePassword
          : errorMessagePassword // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      signInResponse: signInResponse == freezed
          ? _value.signInResponse
          : signInResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Map>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      bool rememberMe,
      bool secretField,
      Either<String, Unit> errorMessageEmail,
      Either<String, Unit> errorMessagePassword,
      Option<Either<Failure, Map>> signInResponse});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? rememberMe = freezed,
    Object? secretField = freezed,
    Object? errorMessageEmail = freezed,
    Object? errorMessagePassword = freezed,
    Object? signInResponse = freezed,
  }) {
    return _then(_SignInState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      rememberMe: rememberMe == freezed
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      secretField: secretField == freezed
          ? _value.secretField
          : secretField // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessageEmail: errorMessageEmail == freezed
          ? _value.errorMessageEmail
          : errorMessageEmail // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      errorMessagePassword: errorMessagePassword == freezed
          ? _value.errorMessagePassword
          : errorMessagePassword // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      signInResponse: signInResponse == freezed
          ? _value.signInResponse
          : signInResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Map>>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.loading,
      required this.rememberMe,
      required this.secretField,
      required this.errorMessageEmail,
      required this.errorMessagePassword,
      required this.signInResponse});

  @override
  final bool loading;
  @override
  final bool rememberMe;
  @override
  final bool secretField;
  @override
  final Either<String, Unit> errorMessageEmail;
  @override
  final Either<String, Unit> errorMessagePassword;
  @override
  final Option<Either<Failure, Map>> signInResponse;

  @override
  String toString() {
    return 'SignInState(loading: $loading, rememberMe: $rememberMe, secretField: $secretField, errorMessageEmail: $errorMessageEmail, errorMessagePassword: $errorMessagePassword, signInResponse: $signInResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.rememberMe, rememberMe) &&
            const DeepCollectionEquality()
                .equals(other.secretField, secretField) &&
            const DeepCollectionEquality()
                .equals(other.errorMessageEmail, errorMessageEmail) &&
            const DeepCollectionEquality()
                .equals(other.errorMessagePassword, errorMessagePassword) &&
            const DeepCollectionEquality()
                .equals(other.signInResponse, signInResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(rememberMe),
      const DeepCollectionEquality().hash(secretField),
      const DeepCollectionEquality().hash(errorMessageEmail),
      const DeepCollectionEquality().hash(errorMessagePassword),
      const DeepCollectionEquality().hash(signInResponse));

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required bool loading,
      required bool rememberMe,
      required bool secretField,
      required Either<String, Unit> errorMessageEmail,
      required Either<String, Unit> errorMessagePassword,
      required Option<Either<Failure, Map>> signInResponse}) = _$_SignInState;

  @override
  bool get loading;
  @override
  bool get rememberMe;
  @override
  bool get secretField;
  @override
  Either<String, Unit> get errorMessageEmail;
  @override
  Either<String, Unit> get errorMessagePassword;
  @override
  Option<Either<Failure, Map>> get signInResponse;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
