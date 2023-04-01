// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SummaryEventTearOff {
  const _$SummaryEventTearOff();

  SaveEvent saveEvent(UserSummary userSummary) {
    return SaveEvent(
      userSummary,
    );
  }

  EditSummary editSummary(UserSummary userSummary) {
    return EditSummary(
      userSummary,
    );
  }
}

/// @nodoc
const $SummaryEvent = _$SummaryEventTearOff();

/// @nodoc
mixin _$SummaryEvent {
  UserSummary get userSummary => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSummary userSummary) saveEvent,
    required TResult Function(UserSummary userSummary) editSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserSummary userSummary)? saveEvent,
    TResult Function(UserSummary userSummary)? editSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSummary userSummary)? saveEvent,
    TResult Function(UserSummary userSummary)? editSummary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEvent value) saveEvent,
    required TResult Function(EditSummary value) editSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveEvent value)? saveEvent,
    TResult Function(EditSummary value)? editSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEvent value)? saveEvent,
    TResult Function(EditSummary value)? editSummary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryEventCopyWith<SummaryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryEventCopyWith<$Res> {
  factory $SummaryEventCopyWith(
          SummaryEvent value, $Res Function(SummaryEvent) then) =
      _$SummaryEventCopyWithImpl<$Res>;
  $Res call({UserSummary userSummary});
}

/// @nodoc
class _$SummaryEventCopyWithImpl<$Res> implements $SummaryEventCopyWith<$Res> {
  _$SummaryEventCopyWithImpl(this._value, this._then);

  final SummaryEvent _value;
  // ignore: unused_field
  final $Res Function(SummaryEvent) _then;

  @override
  $Res call({
    Object? userSummary = freezed,
  }) {
    return _then(_value.copyWith(
      userSummary: userSummary == freezed
          ? _value.userSummary
          : userSummary // ignore: cast_nullable_to_non_nullable
              as UserSummary,
    ));
  }
}

/// @nodoc
abstract class $SaveEventCopyWith<$Res> implements $SummaryEventCopyWith<$Res> {
  factory $SaveEventCopyWith(SaveEvent value, $Res Function(SaveEvent) then) =
      _$SaveEventCopyWithImpl<$Res>;
  @override
  $Res call({UserSummary userSummary});
}

/// @nodoc
class _$SaveEventCopyWithImpl<$Res> extends _$SummaryEventCopyWithImpl<$Res>
    implements $SaveEventCopyWith<$Res> {
  _$SaveEventCopyWithImpl(SaveEvent _value, $Res Function(SaveEvent) _then)
      : super(_value, (v) => _then(v as SaveEvent));

  @override
  SaveEvent get _value => super._value as SaveEvent;

  @override
  $Res call({
    Object? userSummary = freezed,
  }) {
    return _then(SaveEvent(
      userSummary == freezed
          ? _value.userSummary
          : userSummary // ignore: cast_nullable_to_non_nullable
              as UserSummary,
    ));
  }
}

/// @nodoc

class _$SaveEvent implements SaveEvent {
  const _$SaveEvent(this.userSummary);

  @override
  final UserSummary userSummary;

  @override
  String toString() {
    return 'SummaryEvent.saveEvent(userSummary: $userSummary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveEvent &&
            const DeepCollectionEquality()
                .equals(other.userSummary, userSummary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userSummary));

  @JsonKey(ignore: true)
  @override
  $SaveEventCopyWith<SaveEvent> get copyWith =>
      _$SaveEventCopyWithImpl<SaveEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSummary userSummary) saveEvent,
    required TResult Function(UserSummary userSummary) editSummary,
  }) {
    return saveEvent(userSummary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserSummary userSummary)? saveEvent,
    TResult Function(UserSummary userSummary)? editSummary,
  }) {
    return saveEvent?.call(userSummary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSummary userSummary)? saveEvent,
    TResult Function(UserSummary userSummary)? editSummary,
    required TResult orElse(),
  }) {
    if (saveEvent != null) {
      return saveEvent(userSummary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEvent value) saveEvent,
    required TResult Function(EditSummary value) editSummary,
  }) {
    return saveEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveEvent value)? saveEvent,
    TResult Function(EditSummary value)? editSummary,
  }) {
    return saveEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEvent value)? saveEvent,
    TResult Function(EditSummary value)? editSummary,
    required TResult orElse(),
  }) {
    if (saveEvent != null) {
      return saveEvent(this);
    }
    return orElse();
  }
}

abstract class SaveEvent implements SummaryEvent {
  const factory SaveEvent(UserSummary userSummary) = _$SaveEvent;

  @override
  UserSummary get userSummary;
  @override
  @JsonKey(ignore: true)
  $SaveEventCopyWith<SaveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSummaryCopyWith<$Res>
    implements $SummaryEventCopyWith<$Res> {
  factory $EditSummaryCopyWith(
          EditSummary value, $Res Function(EditSummary) then) =
      _$EditSummaryCopyWithImpl<$Res>;
  @override
  $Res call({UserSummary userSummary});
}

/// @nodoc
class _$EditSummaryCopyWithImpl<$Res> extends _$SummaryEventCopyWithImpl<$Res>
    implements $EditSummaryCopyWith<$Res> {
  _$EditSummaryCopyWithImpl(
      EditSummary _value, $Res Function(EditSummary) _then)
      : super(_value, (v) => _then(v as EditSummary));

  @override
  EditSummary get _value => super._value as EditSummary;

  @override
  $Res call({
    Object? userSummary = freezed,
  }) {
    return _then(EditSummary(
      userSummary == freezed
          ? _value.userSummary
          : userSummary // ignore: cast_nullable_to_non_nullable
              as UserSummary,
    ));
  }
}

/// @nodoc

class _$EditSummary implements EditSummary {
  const _$EditSummary(this.userSummary);

  @override
  final UserSummary userSummary;

  @override
  String toString() {
    return 'SummaryEvent.editSummary(userSummary: $userSummary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditSummary &&
            const DeepCollectionEquality()
                .equals(other.userSummary, userSummary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userSummary));

  @JsonKey(ignore: true)
  @override
  $EditSummaryCopyWith<EditSummary> get copyWith =>
      _$EditSummaryCopyWithImpl<EditSummary>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSummary userSummary) saveEvent,
    required TResult Function(UserSummary userSummary) editSummary,
  }) {
    return editSummary(userSummary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserSummary userSummary)? saveEvent,
    TResult Function(UserSummary userSummary)? editSummary,
  }) {
    return editSummary?.call(userSummary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSummary userSummary)? saveEvent,
    TResult Function(UserSummary userSummary)? editSummary,
    required TResult orElse(),
  }) {
    if (editSummary != null) {
      return editSummary(userSummary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEvent value) saveEvent,
    required TResult Function(EditSummary value) editSummary,
  }) {
    return editSummary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveEvent value)? saveEvent,
    TResult Function(EditSummary value)? editSummary,
  }) {
    return editSummary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEvent value)? saveEvent,
    TResult Function(EditSummary value)? editSummary,
    required TResult orElse(),
  }) {
    if (editSummary != null) {
      return editSummary(this);
    }
    return orElse();
  }
}

abstract class EditSummary implements SummaryEvent {
  const factory EditSummary(UserSummary userSummary) = _$EditSummary;

  @override
  UserSummary get userSummary;
  @override
  @JsonKey(ignore: true)
  $EditSummaryCopyWith<EditSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SummaryStateTearOff {
  const _$SummaryStateTearOff();

  _SummaryState call(
      {required UserSummary userSummary,
      required Option<Either<Failure, Unit>> updateSummaryResponse}) {
    return _SummaryState(
      userSummary: userSummary,
      updateSummaryResponse: updateSummaryResponse,
    );
  }
}

/// @nodoc
const $SummaryState = _$SummaryStateTearOff();

/// @nodoc
mixin _$SummaryState {
  UserSummary get userSummary => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get updateSummaryResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryStateCopyWith<SummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res>;
  $Res call(
      {UserSummary userSummary,
      Option<Either<Failure, Unit>> updateSummaryResponse});
}

/// @nodoc
class _$SummaryStateCopyWithImpl<$Res> implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  final SummaryState _value;
  // ignore: unused_field
  final $Res Function(SummaryState) _then;

  @override
  $Res call({
    Object? userSummary = freezed,
    Object? updateSummaryResponse = freezed,
  }) {
    return _then(_value.copyWith(
      userSummary: userSummary == freezed
          ? _value.userSummary
          : userSummary // ignore: cast_nullable_to_non_nullable
              as UserSummary,
      updateSummaryResponse: updateSummaryResponse == freezed
          ? _value.updateSummaryResponse
          : updateSummaryResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SummaryStateCopyWith<$Res>
    implements $SummaryStateCopyWith<$Res> {
  factory _$SummaryStateCopyWith(
          _SummaryState value, $Res Function(_SummaryState) then) =
      __$SummaryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserSummary userSummary,
      Option<Either<Failure, Unit>> updateSummaryResponse});
}

/// @nodoc
class __$SummaryStateCopyWithImpl<$Res> extends _$SummaryStateCopyWithImpl<$Res>
    implements _$SummaryStateCopyWith<$Res> {
  __$SummaryStateCopyWithImpl(
      _SummaryState _value, $Res Function(_SummaryState) _then)
      : super(_value, (v) => _then(v as _SummaryState));

  @override
  _SummaryState get _value => super._value as _SummaryState;

  @override
  $Res call({
    Object? userSummary = freezed,
    Object? updateSummaryResponse = freezed,
  }) {
    return _then(_SummaryState(
      userSummary: userSummary == freezed
          ? _value.userSummary
          : userSummary // ignore: cast_nullable_to_non_nullable
              as UserSummary,
      updateSummaryResponse: updateSummaryResponse == freezed
          ? _value.updateSummaryResponse
          : updateSummaryResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SummaryState implements _SummaryState {
  const _$_SummaryState(
      {required this.userSummary, required this.updateSummaryResponse});

  @override
  final UserSummary userSummary;
  @override
  final Option<Either<Failure, Unit>> updateSummaryResponse;

  @override
  String toString() {
    return 'SummaryState(userSummary: $userSummary, updateSummaryResponse: $updateSummaryResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SummaryState &&
            const DeepCollectionEquality()
                .equals(other.userSummary, userSummary) &&
            const DeepCollectionEquality()
                .equals(other.updateSummaryResponse, updateSummaryResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userSummary),
      const DeepCollectionEquality().hash(updateSummaryResponse));

  @JsonKey(ignore: true)
  @override
  _$SummaryStateCopyWith<_SummaryState> get copyWith =>
      __$SummaryStateCopyWithImpl<_SummaryState>(this, _$identity);
}

abstract class _SummaryState implements SummaryState {
  const factory _SummaryState(
          {required UserSummary userSummary,
          required Option<Either<Failure, Unit>> updateSummaryResponse}) =
      _$_SummaryState;

  @override
  UserSummary get userSummary;
  @override
  Option<Either<Failure, Unit>> get updateSummaryResponse;
  @override
  @JsonKey(ignore: true)
  _$SummaryStateCopyWith<_SummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
