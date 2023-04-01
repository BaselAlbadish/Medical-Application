// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotPasswordEventTearOff {
  const _$ForgotPasswordEventTearOff();

  _VerifyByEmail verifyByEmail(String email) {
    return _VerifyByEmail(
      email,
    );
  }

  _ResendEmail resendEmail(String email) {
    return _ResendEmail(
      email,
    );
  }

  _ConfirmEmail confirmEmail(String code, String remoteCode) {
    return _ConfirmEmail(
      code,
      remoteCode,
    );
  }

  _ChangePassword changePassword(String newPassword, int accountId) {
    return _ChangePassword(
      newPassword,
      accountId,
    );
  }

  _ChangeSecretPassword changeSecretPassword(bool secret) {
    return _ChangeSecretPassword(
      secret,
    );
  }

  _ChangeSecretConfirmPassword changeSecretConfirmPassword(bool secret) {
    return _ChangeSecretConfirmPassword(
      secret,
    );
  }

  _DecrementIndex decrementIndex() {
    return const _DecrementIndex();
  }

  _EmailValidation emailValidation(String validateEmail) {
    return _EmailValidation(
      validateEmail,
    );
  }

  _CodeEmailValidation codeEmailValidation(String code) {
    return _CodeEmailValidation(
      code,
    );
  }
}

/// @nodoc
const $ForgotPasswordEvent = _$ForgotPasswordEventTearOff();

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyByEmail,
    required TResult Function(String email) resendEmail,
    required TResult Function(String code, String remoteCode) confirmEmail,
    required TResult Function(String newPassword, int accountId) changePassword,
    required TResult Function(bool secret) changeSecretPassword,
    required TResult Function(bool secret) changeSecretConfirmPassword,
    required TResult Function() decrementIndex,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String code) codeEmailValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyByEmail value) verifyByEmail,
    required TResult Function(_ResendEmail value) resendEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeSecretPassword value) changeSecretPassword,
    required TResult Function(_ChangeSecretConfirmPassword value)
        changeSecretConfirmPassword,
    required TResult Function(_DecrementIndex value) decrementIndex,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_CodeEmailValidation value) codeEmailValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  final ForgotPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordEvent) _then;
}

/// @nodoc
abstract class _$VerifyByEmailCopyWith<$Res> {
  factory _$VerifyByEmailCopyWith(
          _VerifyByEmail value, $Res Function(_VerifyByEmail) then) =
      __$VerifyByEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$VerifyByEmailCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$VerifyByEmailCopyWith<$Res> {
  __$VerifyByEmailCopyWithImpl(
      _VerifyByEmail _value, $Res Function(_VerifyByEmail) _then)
      : super(_value, (v) => _then(v as _VerifyByEmail));

  @override
  _VerifyByEmail get _value => super._value as _VerifyByEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_VerifyByEmail(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyByEmail implements _VerifyByEmail {
  const _$_VerifyByEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.verifyByEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyByEmail &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$VerifyByEmailCopyWith<_VerifyByEmail> get copyWith =>
      __$VerifyByEmailCopyWithImpl<_VerifyByEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyByEmail,
    required TResult Function(String email) resendEmail,
    required TResult Function(String code, String remoteCode) confirmEmail,
    required TResult Function(String newPassword, int accountId) changePassword,
    required TResult Function(bool secret) changeSecretPassword,
    required TResult Function(bool secret) changeSecretConfirmPassword,
    required TResult Function() decrementIndex,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String code) codeEmailValidation,
  }) {
    return verifyByEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
  }) {
    return verifyByEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (verifyByEmail != null) {
      return verifyByEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyByEmail value) verifyByEmail,
    required TResult Function(_ResendEmail value) resendEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeSecretPassword value) changeSecretPassword,
    required TResult Function(_ChangeSecretConfirmPassword value)
        changeSecretConfirmPassword,
    required TResult Function(_DecrementIndex value) decrementIndex,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_CodeEmailValidation value) codeEmailValidation,
  }) {
    return verifyByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
  }) {
    return verifyByEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (verifyByEmail != null) {
      return verifyByEmail(this);
    }
    return orElse();
  }
}

abstract class _VerifyByEmail implements ForgotPasswordEvent {
  const factory _VerifyByEmail(String email) = _$_VerifyByEmail;

  String get email;
  @JsonKey(ignore: true)
  _$VerifyByEmailCopyWith<_VerifyByEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResendEmailCopyWith<$Res> {
  factory _$ResendEmailCopyWith(
          _ResendEmail value, $Res Function(_ResendEmail) then) =
      __$ResendEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$ResendEmailCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$ResendEmailCopyWith<$Res> {
  __$ResendEmailCopyWithImpl(
      _ResendEmail _value, $Res Function(_ResendEmail) _then)
      : super(_value, (v) => _then(v as _ResendEmail));

  @override
  _ResendEmail get _value => super._value as _ResendEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_ResendEmail(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResendEmail implements _ResendEmail {
  const _$_ResendEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.resendEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResendEmail &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$ResendEmailCopyWith<_ResendEmail> get copyWith =>
      __$ResendEmailCopyWithImpl<_ResendEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyByEmail,
    required TResult Function(String email) resendEmail,
    required TResult Function(String code, String remoteCode) confirmEmail,
    required TResult Function(String newPassword, int accountId) changePassword,
    required TResult Function(bool secret) changeSecretPassword,
    required TResult Function(bool secret) changeSecretConfirmPassword,
    required TResult Function() decrementIndex,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String code) codeEmailValidation,
  }) {
    return resendEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
  }) {
    return resendEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (resendEmail != null) {
      return resendEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyByEmail value) verifyByEmail,
    required TResult Function(_ResendEmail value) resendEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeSecretPassword value) changeSecretPassword,
    required TResult Function(_ChangeSecretConfirmPassword value)
        changeSecretConfirmPassword,
    required TResult Function(_DecrementIndex value) decrementIndex,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_CodeEmailValidation value) codeEmailValidation,
  }) {
    return resendEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
  }) {
    return resendEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (resendEmail != null) {
      return resendEmail(this);
    }
    return orElse();
  }
}

abstract class _ResendEmail implements ForgotPasswordEvent {
  const factory _ResendEmail(String email) = _$_ResendEmail;

  String get email;
  @JsonKey(ignore: true)
  _$ResendEmailCopyWith<_ResendEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmEmailCopyWith<$Res> {
  factory _$ConfirmEmailCopyWith(
          _ConfirmEmail value, $Res Function(_ConfirmEmail) then) =
      __$ConfirmEmailCopyWithImpl<$Res>;
  $Res call({String code, String remoteCode});
}

/// @nodoc
class __$ConfirmEmailCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$ConfirmEmailCopyWith<$Res> {
  __$ConfirmEmailCopyWithImpl(
      _ConfirmEmail _value, $Res Function(_ConfirmEmail) _then)
      : super(_value, (v) => _then(v as _ConfirmEmail));

  @override
  _ConfirmEmail get _value => super._value as _ConfirmEmail;

  @override
  $Res call({
    Object? code = freezed,
    Object? remoteCode = freezed,
  }) {
    return _then(_ConfirmEmail(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      remoteCode == freezed
          ? _value.remoteCode
          : remoteCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmEmail implements _ConfirmEmail {
  const _$_ConfirmEmail(this.code, this.remoteCode);

  @override
  final String code;
  @override
  final String remoteCode;

  @override
  String toString() {
    return 'ForgotPasswordEvent.confirmEmail(code: $code, remoteCode: $remoteCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmEmail &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.remoteCode, remoteCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(remoteCode));

  @JsonKey(ignore: true)
  @override
  _$ConfirmEmailCopyWith<_ConfirmEmail> get copyWith =>
      __$ConfirmEmailCopyWithImpl<_ConfirmEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyByEmail,
    required TResult Function(String email) resendEmail,
    required TResult Function(String code, String remoteCode) confirmEmail,
    required TResult Function(String newPassword, int accountId) changePassword,
    required TResult Function(bool secret) changeSecretPassword,
    required TResult Function(bool secret) changeSecretConfirmPassword,
    required TResult Function() decrementIndex,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String code) codeEmailValidation,
  }) {
    return confirmEmail(code, remoteCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
  }) {
    return confirmEmail?.call(code, remoteCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(code, remoteCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyByEmail value) verifyByEmail,
    required TResult Function(_ResendEmail value) resendEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeSecretPassword value) changeSecretPassword,
    required TResult Function(_ChangeSecretConfirmPassword value)
        changeSecretConfirmPassword,
    required TResult Function(_DecrementIndex value) decrementIndex,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_CodeEmailValidation value) codeEmailValidation,
  }) {
    return confirmEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
  }) {
    return confirmEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(this);
    }
    return orElse();
  }
}

abstract class _ConfirmEmail implements ForgotPasswordEvent {
  const factory _ConfirmEmail(String code, String remoteCode) = _$_ConfirmEmail;

  String get code;
  String get remoteCode;
  @JsonKey(ignore: true)
  _$ConfirmEmailCopyWith<_ConfirmEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangePasswordCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) then) =
      __$ChangePasswordCopyWithImpl<$Res>;
  $Res call({String newPassword, int accountId});
}

/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(
      _ChangePassword _value, $Res Function(_ChangePassword) _then)
      : super(_value, (v) => _then(v as _ChangePassword));

  @override
  _ChangePassword get _value => super._value as _ChangePassword;

  @override
  $Res call({
    Object? newPassword = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_ChangePassword(
      newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(this.newPassword, this.accountId);

  @override
  final String newPassword;
  @override
  final int accountId;

  @override
  String toString() {
    return 'ForgotPasswordEvent.changePassword(newPassword: $newPassword, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePassword &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(accountId));

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyByEmail,
    required TResult Function(String email) resendEmail,
    required TResult Function(String code, String remoteCode) confirmEmail,
    required TResult Function(String newPassword, int accountId) changePassword,
    required TResult Function(bool secret) changeSecretPassword,
    required TResult Function(bool secret) changeSecretConfirmPassword,
    required TResult Function() decrementIndex,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String code) codeEmailValidation,
  }) {
    return changePassword(newPassword, accountId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
  }) {
    return changePassword?.call(newPassword, accountId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(newPassword, accountId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyByEmail value) verifyByEmail,
    required TResult Function(_ResendEmail value) resendEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeSecretPassword value) changeSecretPassword,
    required TResult Function(_ChangeSecretConfirmPassword value)
        changeSecretConfirmPassword,
    required TResult Function(_DecrementIndex value) decrementIndex,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_CodeEmailValidation value) codeEmailValidation,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements ForgotPasswordEvent {
  const factory _ChangePassword(String newPassword, int accountId) =
      _$_ChangePassword;

  String get newPassword;
  int get accountId;
  @JsonKey(ignore: true)
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeSecretPasswordCopyWith<$Res> {
  factory _$ChangeSecretPasswordCopyWith(_ChangeSecretPassword value,
          $Res Function(_ChangeSecretPassword) then) =
      __$ChangeSecretPasswordCopyWithImpl<$Res>;
  $Res call({bool secret});
}

/// @nodoc
class __$ChangeSecretPasswordCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$ChangeSecretPasswordCopyWith<$Res> {
  __$ChangeSecretPasswordCopyWithImpl(
      _ChangeSecretPassword _value, $Res Function(_ChangeSecretPassword) _then)
      : super(_value, (v) => _then(v as _ChangeSecretPassword));

  @override
  _ChangeSecretPassword get _value => super._value as _ChangeSecretPassword;

  @override
  $Res call({
    Object? secret = freezed,
  }) {
    return _then(_ChangeSecretPassword(
      secret == freezed
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeSecretPassword implements _ChangeSecretPassword {
  const _$_ChangeSecretPassword(this.secret);

  @override
  final bool secret;

  @override
  String toString() {
    return 'ForgotPasswordEvent.changeSecretPassword(secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeSecretPassword &&
            const DeepCollectionEquality().equals(other.secret, secret));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(secret));

  @JsonKey(ignore: true)
  @override
  _$ChangeSecretPasswordCopyWith<_ChangeSecretPassword> get copyWith =>
      __$ChangeSecretPasswordCopyWithImpl<_ChangeSecretPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyByEmail,
    required TResult Function(String email) resendEmail,
    required TResult Function(String code, String remoteCode) confirmEmail,
    required TResult Function(String newPassword, int accountId) changePassword,
    required TResult Function(bool secret) changeSecretPassword,
    required TResult Function(bool secret) changeSecretConfirmPassword,
    required TResult Function() decrementIndex,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String code) codeEmailValidation,
  }) {
    return changeSecretPassword(secret);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
  }) {
    return changeSecretPassword?.call(secret);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (changeSecretPassword != null) {
      return changeSecretPassword(secret);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyByEmail value) verifyByEmail,
    required TResult Function(_ResendEmail value) resendEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeSecretPassword value) changeSecretPassword,
    required TResult Function(_ChangeSecretConfirmPassword value)
        changeSecretConfirmPassword,
    required TResult Function(_DecrementIndex value) decrementIndex,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_CodeEmailValidation value) codeEmailValidation,
  }) {
    return changeSecretPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
  }) {
    return changeSecretPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (changeSecretPassword != null) {
      return changeSecretPassword(this);
    }
    return orElse();
  }
}

abstract class _ChangeSecretPassword implements ForgotPasswordEvent {
  const factory _ChangeSecretPassword(bool secret) = _$_ChangeSecretPassword;

  bool get secret;
  @JsonKey(ignore: true)
  _$ChangeSecretPasswordCopyWith<_ChangeSecretPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeSecretConfirmPasswordCopyWith<$Res> {
  factory _$ChangeSecretConfirmPasswordCopyWith(
          _ChangeSecretConfirmPassword value,
          $Res Function(_ChangeSecretConfirmPassword) then) =
      __$ChangeSecretConfirmPasswordCopyWithImpl<$Res>;
  $Res call({bool secret});
}

/// @nodoc
class __$ChangeSecretConfirmPasswordCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$ChangeSecretConfirmPasswordCopyWith<$Res> {
  __$ChangeSecretConfirmPasswordCopyWithImpl(
      _ChangeSecretConfirmPassword _value,
      $Res Function(_ChangeSecretConfirmPassword) _then)
      : super(_value, (v) => _then(v as _ChangeSecretConfirmPassword));

  @override
  _ChangeSecretConfirmPassword get _value =>
      super._value as _ChangeSecretConfirmPassword;

  @override
  $Res call({
    Object? secret = freezed,
  }) {
    return _then(_ChangeSecretConfirmPassword(
      secret == freezed
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeSecretConfirmPassword implements _ChangeSecretConfirmPassword {
  const _$_ChangeSecretConfirmPassword(this.secret);

  @override
  final bool secret;

  @override
  String toString() {
    return 'ForgotPasswordEvent.changeSecretConfirmPassword(secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeSecretConfirmPassword &&
            const DeepCollectionEquality().equals(other.secret, secret));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(secret));

  @JsonKey(ignore: true)
  @override
  _$ChangeSecretConfirmPasswordCopyWith<_ChangeSecretConfirmPassword>
      get copyWith => __$ChangeSecretConfirmPasswordCopyWithImpl<
          _ChangeSecretConfirmPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyByEmail,
    required TResult Function(String email) resendEmail,
    required TResult Function(String code, String remoteCode) confirmEmail,
    required TResult Function(String newPassword, int accountId) changePassword,
    required TResult Function(bool secret) changeSecretPassword,
    required TResult Function(bool secret) changeSecretConfirmPassword,
    required TResult Function() decrementIndex,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String code) codeEmailValidation,
  }) {
    return changeSecretConfirmPassword(secret);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
  }) {
    return changeSecretConfirmPassword?.call(secret);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (changeSecretConfirmPassword != null) {
      return changeSecretConfirmPassword(secret);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyByEmail value) verifyByEmail,
    required TResult Function(_ResendEmail value) resendEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeSecretPassword value) changeSecretPassword,
    required TResult Function(_ChangeSecretConfirmPassword value)
        changeSecretConfirmPassword,
    required TResult Function(_DecrementIndex value) decrementIndex,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_CodeEmailValidation value) codeEmailValidation,
  }) {
    return changeSecretConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
  }) {
    return changeSecretConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (changeSecretConfirmPassword != null) {
      return changeSecretConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class _ChangeSecretConfirmPassword implements ForgotPasswordEvent {
  const factory _ChangeSecretConfirmPassword(bool secret) =
      _$_ChangeSecretConfirmPassword;

  bool get secret;
  @JsonKey(ignore: true)
  _$ChangeSecretConfirmPasswordCopyWith<_ChangeSecretConfirmPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DecrementIndexCopyWith<$Res> {
  factory _$DecrementIndexCopyWith(
          _DecrementIndex value, $Res Function(_DecrementIndex) then) =
      __$DecrementIndexCopyWithImpl<$Res>;
}

/// @nodoc
class __$DecrementIndexCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$DecrementIndexCopyWith<$Res> {
  __$DecrementIndexCopyWithImpl(
      _DecrementIndex _value, $Res Function(_DecrementIndex) _then)
      : super(_value, (v) => _then(v as _DecrementIndex));

  @override
  _DecrementIndex get _value => super._value as _DecrementIndex;
}

/// @nodoc

class _$_DecrementIndex implements _DecrementIndex {
  const _$_DecrementIndex();

  @override
  String toString() {
    return 'ForgotPasswordEvent.decrementIndex()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DecrementIndex);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyByEmail,
    required TResult Function(String email) resendEmail,
    required TResult Function(String code, String remoteCode) confirmEmail,
    required TResult Function(String newPassword, int accountId) changePassword,
    required TResult Function(bool secret) changeSecretPassword,
    required TResult Function(bool secret) changeSecretConfirmPassword,
    required TResult Function() decrementIndex,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String code) codeEmailValidation,
  }) {
    return decrementIndex();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
  }) {
    return decrementIndex?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (decrementIndex != null) {
      return decrementIndex();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyByEmail value) verifyByEmail,
    required TResult Function(_ResendEmail value) resendEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeSecretPassword value) changeSecretPassword,
    required TResult Function(_ChangeSecretConfirmPassword value)
        changeSecretConfirmPassword,
    required TResult Function(_DecrementIndex value) decrementIndex,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_CodeEmailValidation value) codeEmailValidation,
  }) {
    return decrementIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
  }) {
    return decrementIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (decrementIndex != null) {
      return decrementIndex(this);
    }
    return orElse();
  }
}

abstract class _DecrementIndex implements ForgotPasswordEvent {
  const factory _DecrementIndex() = _$_DecrementIndex;
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
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
    return 'ForgotPasswordEvent.emailValidation(validateEmail: $validateEmail)';
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
    required TResult Function(String email) verifyByEmail,
    required TResult Function(String email) resendEmail,
    required TResult Function(String code, String remoteCode) confirmEmail,
    required TResult Function(String newPassword, int accountId) changePassword,
    required TResult Function(bool secret) changeSecretPassword,
    required TResult Function(bool secret) changeSecretConfirmPassword,
    required TResult Function() decrementIndex,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String code) codeEmailValidation,
  }) {
    return emailValidation(validateEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
  }) {
    return emailValidation?.call(validateEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
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
    required TResult Function(_VerifyByEmail value) verifyByEmail,
    required TResult Function(_ResendEmail value) resendEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeSecretPassword value) changeSecretPassword,
    required TResult Function(_ChangeSecretConfirmPassword value)
        changeSecretConfirmPassword,
    required TResult Function(_DecrementIndex value) decrementIndex,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_CodeEmailValidation value) codeEmailValidation,
  }) {
    return emailValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
  }) {
    return emailValidation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (emailValidation != null) {
      return emailValidation(this);
    }
    return orElse();
  }
}

abstract class _EmailValidation implements ForgotPasswordEvent {
  const factory _EmailValidation(String validateEmail) = _$_EmailValidation;

  String get validateEmail;
  @JsonKey(ignore: true)
  _$EmailValidationCopyWith<_EmailValidation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CodeEmailValidationCopyWith<$Res> {
  factory _$CodeEmailValidationCopyWith(_CodeEmailValidation value,
          $Res Function(_CodeEmailValidation) then) =
      __$CodeEmailValidationCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class __$CodeEmailValidationCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$CodeEmailValidationCopyWith<$Res> {
  __$CodeEmailValidationCopyWithImpl(
      _CodeEmailValidation _value, $Res Function(_CodeEmailValidation) _then)
      : super(_value, (v) => _then(v as _CodeEmailValidation));

  @override
  _CodeEmailValidation get _value => super._value as _CodeEmailValidation;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_CodeEmailValidation(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CodeEmailValidation implements _CodeEmailValidation {
  const _$_CodeEmailValidation(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'ForgotPasswordEvent.codeEmailValidation(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CodeEmailValidation &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$CodeEmailValidationCopyWith<_CodeEmailValidation> get copyWith =>
      __$CodeEmailValidationCopyWithImpl<_CodeEmailValidation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyByEmail,
    required TResult Function(String email) resendEmail,
    required TResult Function(String code, String remoteCode) confirmEmail,
    required TResult Function(String newPassword, int accountId) changePassword,
    required TResult Function(bool secret) changeSecretPassword,
    required TResult Function(bool secret) changeSecretConfirmPassword,
    required TResult Function() decrementIndex,
    required TResult Function(String validateEmail) emailValidation,
    required TResult Function(String code) codeEmailValidation,
  }) {
    return codeEmailValidation(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
  }) {
    return codeEmailValidation?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyByEmail,
    TResult Function(String email)? resendEmail,
    TResult Function(String code, String remoteCode)? confirmEmail,
    TResult Function(String newPassword, int accountId)? changePassword,
    TResult Function(bool secret)? changeSecretPassword,
    TResult Function(bool secret)? changeSecretConfirmPassword,
    TResult Function()? decrementIndex,
    TResult Function(String validateEmail)? emailValidation,
    TResult Function(String code)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (codeEmailValidation != null) {
      return codeEmailValidation(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyByEmail value) verifyByEmail,
    required TResult Function(_ResendEmail value) resendEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_ChangeSecretPassword value) changeSecretPassword,
    required TResult Function(_ChangeSecretConfirmPassword value)
        changeSecretConfirmPassword,
    required TResult Function(_DecrementIndex value) decrementIndex,
    required TResult Function(_EmailValidation value) emailValidation,
    required TResult Function(_CodeEmailValidation value) codeEmailValidation,
  }) {
    return codeEmailValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
  }) {
    return codeEmailValidation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyByEmail value)? verifyByEmail,
    TResult Function(_ResendEmail value)? resendEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_ChangeSecretPassword value)? changeSecretPassword,
    TResult Function(_ChangeSecretConfirmPassword value)?
        changeSecretConfirmPassword,
    TResult Function(_DecrementIndex value)? decrementIndex,
    TResult Function(_EmailValidation value)? emailValidation,
    TResult Function(_CodeEmailValidation value)? codeEmailValidation,
    required TResult orElse(),
  }) {
    if (codeEmailValidation != null) {
      return codeEmailValidation(this);
    }
    return orElse();
  }
}

abstract class _CodeEmailValidation implements ForgotPasswordEvent {
  const factory _CodeEmailValidation(String code) = _$_CodeEmailValidation;

  String get code;
  @JsonKey(ignore: true)
  _$CodeEmailValidationCopyWith<_CodeEmailValidation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForgotPasswordStateTearOff {
  const _$ForgotPasswordStateTearOff();

  _ForgotPasswordState call(
      {required bool loading,
      required int index,
      required String remoteCode,
      required String code,
      required int accountId,
      required bool secretPassword,
      required bool secretConfirmPassword,
      required String email,
      required Option<Either<Failure, String>> message,
      required Option<Either<Failure, Map>> resultVerify,
      required Either<String, Unit> errorMessageEmail,
      required Either<String, Unit> errorMessageCodeEmail}) {
    return _ForgotPasswordState(
      loading: loading,
      index: index,
      remoteCode: remoteCode,
      code: code,
      accountId: accountId,
      secretPassword: secretPassword,
      secretConfirmPassword: secretConfirmPassword,
      email: email,
      message: message,
      resultVerify: resultVerify,
      errorMessageEmail: errorMessageEmail,
      errorMessageCodeEmail: errorMessageCodeEmail,
    );
  }
}

/// @nodoc
const $ForgotPasswordState = _$ForgotPasswordStateTearOff();

/// @nodoc
mixin _$ForgotPasswordState {
  bool get loading => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get remoteCode => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  bool get secretPassword => throw _privateConstructorUsedError;
  bool get secretConfirmPassword => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  Option<Either<Failure, String>> get message =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Map>> get resultVerify =>
      throw _privateConstructorUsedError;
  Either<String, Unit> get errorMessageEmail =>
      throw _privateConstructorUsedError;
  Either<String, Unit> get errorMessageCodeEmail =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      int index,
      String remoteCode,
      String code,
      int accountId,
      bool secretPassword,
      bool secretConfirmPassword,
      String email,
      Option<Either<Failure, String>> message,
      Option<Either<Failure, Map>> resultVerify,
      Either<String, Unit> errorMessageEmail,
      Either<String, Unit> errorMessageCodeEmail});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? index = freezed,
    Object? remoteCode = freezed,
    Object? code = freezed,
    Object? accountId = freezed,
    Object? secretPassword = freezed,
    Object? secretConfirmPassword = freezed,
    Object? email = freezed,
    Object? message = freezed,
    Object? resultVerify = freezed,
    Object? errorMessageEmail = freezed,
    Object? errorMessageCodeEmail = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      remoteCode: remoteCode == freezed
          ? _value.remoteCode
          : remoteCode // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      secretPassword: secretPassword == freezed
          ? _value.secretPassword
          : secretPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      secretConfirmPassword: secretConfirmPassword == freezed
          ? _value.secretConfirmPassword
          : secretConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
      resultVerify: resultVerify == freezed
          ? _value.resultVerify
          : resultVerify // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Map>>,
      errorMessageEmail: errorMessageEmail == freezed
          ? _value.errorMessageEmail
          : errorMessageEmail // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      errorMessageCodeEmail: errorMessageCodeEmail == freezed
          ? _value.errorMessageCodeEmail
          : errorMessageCodeEmail // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
    ));
  }
}

/// @nodoc
abstract class _$ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value,
          $Res Function(_ForgotPasswordState) then) =
      __$ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      int index,
      String remoteCode,
      String code,
      int accountId,
      bool secretPassword,
      bool secretConfirmPassword,
      String email,
      Option<Either<Failure, String>> message,
      Option<Either<Failure, Map>> resultVerify,
      Either<String, Unit> errorMessageEmail,
      Either<String, Unit> errorMessageCodeEmail});
}

/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(
      _ForgotPasswordState _value, $Res Function(_ForgotPasswordState) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordState));

  @override
  _ForgotPasswordState get _value => super._value as _ForgotPasswordState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? index = freezed,
    Object? remoteCode = freezed,
    Object? code = freezed,
    Object? accountId = freezed,
    Object? secretPassword = freezed,
    Object? secretConfirmPassword = freezed,
    Object? email = freezed,
    Object? message = freezed,
    Object? resultVerify = freezed,
    Object? errorMessageEmail = freezed,
    Object? errorMessageCodeEmail = freezed,
  }) {
    return _then(_ForgotPasswordState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      remoteCode: remoteCode == freezed
          ? _value.remoteCode
          : remoteCode // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      secretPassword: secretPassword == freezed
          ? _value.secretPassword
          : secretPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      secretConfirmPassword: secretConfirmPassword == freezed
          ? _value.secretConfirmPassword
          : secretConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
      resultVerify: resultVerify == freezed
          ? _value.resultVerify
          : resultVerify // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Map>>,
      errorMessageEmail: errorMessageEmail == freezed
          ? _value.errorMessageEmail
          : errorMessageEmail // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
      errorMessageCodeEmail: errorMessageCodeEmail == freezed
          ? _value.errorMessageCodeEmail
          : errorMessageCodeEmail // ignore: cast_nullable_to_non_nullable
              as Either<String, Unit>,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState implements _ForgotPasswordState {
  const _$_ForgotPasswordState(
      {required this.loading,
      required this.index,
      required this.remoteCode,
      required this.code,
      required this.accountId,
      required this.secretPassword,
      required this.secretConfirmPassword,
      required this.email,
      required this.message,
      required this.resultVerify,
      required this.errorMessageEmail,
      required this.errorMessageCodeEmail});

  @override
  final bool loading;
  @override
  final int index;
  @override
  final String remoteCode;
  @override
  final String code;
  @override
  final int accountId;
  @override
  final bool secretPassword;
  @override
  final bool secretConfirmPassword;
  @override
  final String email;
  @override
  final Option<Either<Failure, String>> message;
  @override
  final Option<Either<Failure, Map>> resultVerify;
  @override
  final Either<String, Unit> errorMessageEmail;
  @override
  final Either<String, Unit> errorMessageCodeEmail;

  @override
  String toString() {
    return 'ForgotPasswordState(loading: $loading, index: $index, remoteCode: $remoteCode, code: $code, accountId: $accountId, secretPassword: $secretPassword, secretConfirmPassword: $secretConfirmPassword, email: $email, message: $message, resultVerify: $resultVerify, errorMessageEmail: $errorMessageEmail, errorMessageCodeEmail: $errorMessageCodeEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPasswordState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality()
                .equals(other.remoteCode, remoteCode) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.accountId, accountId) &&
            const DeepCollectionEquality()
                .equals(other.secretPassword, secretPassword) &&
            const DeepCollectionEquality()
                .equals(other.secretConfirmPassword, secretConfirmPassword) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.resultVerify, resultVerify) &&
            const DeepCollectionEquality()
                .equals(other.errorMessageEmail, errorMessageEmail) &&
            const DeepCollectionEquality()
                .equals(other.errorMessageCodeEmail, errorMessageCodeEmail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(remoteCode),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(accountId),
      const DeepCollectionEquality().hash(secretPassword),
      const DeepCollectionEquality().hash(secretConfirmPassword),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(resultVerify),
      const DeepCollectionEquality().hash(errorMessageEmail),
      const DeepCollectionEquality().hash(errorMessageCodeEmail));

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
          {required bool loading,
          required int index,
          required String remoteCode,
          required String code,
          required int accountId,
          required bool secretPassword,
          required bool secretConfirmPassword,
          required String email,
          required Option<Either<Failure, String>> message,
          required Option<Either<Failure, Map>> resultVerify,
          required Either<String, Unit> errorMessageEmail,
          required Either<String, Unit> errorMessageCodeEmail}) =
      _$_ForgotPasswordState;

  @override
  bool get loading;
  @override
  int get index;
  @override
  String get remoteCode;
  @override
  String get code;
  @override
  int get accountId;
  @override
  bool get secretPassword;
  @override
  bool get secretConfirmPassword;
  @override
  String get email;
  @override
  Option<Either<Failure, String>> get message;
  @override
  Option<Either<Failure, Map>> get resultVerify;
  @override
  Either<String, Unit> get errorMessageEmail;
  @override
  Either<String, Unit> get errorMessageCodeEmail;
  @override
  @JsonKey(ignore: true)
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
