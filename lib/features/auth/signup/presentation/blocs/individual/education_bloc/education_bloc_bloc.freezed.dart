// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'education_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EducationEventTearOff {
  const _$EducationEventTearOff();

  _OnNextIsPressed nextIsPressed() {
    return const _OnNextIsPressed();
  }

  _OnUniversitySelection universityIsSelected(int id) {
    return _OnUniversitySelection(
      id,
    );
  }
}

/// @nodoc
const $EducationEvent = _$EducationEventTearOff();

/// @nodoc
mixin _$EducationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextIsPressed,
    required TResult Function(int id) universityIsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? nextIsPressed,
    TResult Function(int id)? universityIsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextIsPressed,
    TResult Function(int id)? universityIsSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNextIsPressed value) nextIsPressed,
    required TResult Function(_OnUniversitySelection value)
        universityIsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnNextIsPressed value)? nextIsPressed,
    TResult Function(_OnUniversitySelection value)? universityIsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNextIsPressed value)? nextIsPressed,
    TResult Function(_OnUniversitySelection value)? universityIsSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationEventCopyWith<$Res> {
  factory $EducationEventCopyWith(
          EducationEvent value, $Res Function(EducationEvent) then) =
      _$EducationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EducationEventCopyWithImpl<$Res>
    implements $EducationEventCopyWith<$Res> {
  _$EducationEventCopyWithImpl(this._value, this._then);

  final EducationEvent _value;
  // ignore: unused_field
  final $Res Function(EducationEvent) _then;
}

/// @nodoc
abstract class _$OnNextIsPressedCopyWith<$Res> {
  factory _$OnNextIsPressedCopyWith(
          _OnNextIsPressed value, $Res Function(_OnNextIsPressed) then) =
      __$OnNextIsPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnNextIsPressedCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res>
    implements _$OnNextIsPressedCopyWith<$Res> {
  __$OnNextIsPressedCopyWithImpl(
      _OnNextIsPressed _value, $Res Function(_OnNextIsPressed) _then)
      : super(_value, (v) => _then(v as _OnNextIsPressed));

  @override
  _OnNextIsPressed get _value => super._value as _OnNextIsPressed;
}

/// @nodoc

class _$_OnNextIsPressed implements _OnNextIsPressed {
  const _$_OnNextIsPressed();

  @override
  String toString() {
    return 'EducationEvent.nextIsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnNextIsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextIsPressed,
    required TResult Function(int id) universityIsSelected,
  }) {
    return nextIsPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? nextIsPressed,
    TResult Function(int id)? universityIsSelected,
  }) {
    return nextIsPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextIsPressed,
    TResult Function(int id)? universityIsSelected,
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
    required TResult Function(_OnNextIsPressed value) nextIsPressed,
    required TResult Function(_OnUniversitySelection value)
        universityIsSelected,
  }) {
    return nextIsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnNextIsPressed value)? nextIsPressed,
    TResult Function(_OnUniversitySelection value)? universityIsSelected,
  }) {
    return nextIsPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNextIsPressed value)? nextIsPressed,
    TResult Function(_OnUniversitySelection value)? universityIsSelected,
    required TResult orElse(),
  }) {
    if (nextIsPressed != null) {
      return nextIsPressed(this);
    }
    return orElse();
  }
}

abstract class _OnNextIsPressed implements EducationEvent {
  const factory _OnNextIsPressed() = _$_OnNextIsPressed;
}

/// @nodoc
abstract class _$OnUniversitySelectionCopyWith<$Res> {
  factory _$OnUniversitySelectionCopyWith(_OnUniversitySelection value,
          $Res Function(_OnUniversitySelection) then) =
      __$OnUniversitySelectionCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$OnUniversitySelectionCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res>
    implements _$OnUniversitySelectionCopyWith<$Res> {
  __$OnUniversitySelectionCopyWithImpl(_OnUniversitySelection _value,
      $Res Function(_OnUniversitySelection) _then)
      : super(_value, (v) => _then(v as _OnUniversitySelection));

  @override
  _OnUniversitySelection get _value => super._value as _OnUniversitySelection;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_OnUniversitySelection(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnUniversitySelection implements _OnUniversitySelection {
  const _$_OnUniversitySelection(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'EducationEvent.universityIsSelected(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnUniversitySelection &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$OnUniversitySelectionCopyWith<_OnUniversitySelection> get copyWith =>
      __$OnUniversitySelectionCopyWithImpl<_OnUniversitySelection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextIsPressed,
    required TResult Function(int id) universityIsSelected,
  }) {
    return universityIsSelected(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? nextIsPressed,
    TResult Function(int id)? universityIsSelected,
  }) {
    return universityIsSelected?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextIsPressed,
    TResult Function(int id)? universityIsSelected,
    required TResult orElse(),
  }) {
    if (universityIsSelected != null) {
      return universityIsSelected(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNextIsPressed value) nextIsPressed,
    required TResult Function(_OnUniversitySelection value)
        universityIsSelected,
  }) {
    return universityIsSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnNextIsPressed value)? nextIsPressed,
    TResult Function(_OnUniversitySelection value)? universityIsSelected,
  }) {
    return universityIsSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNextIsPressed value)? nextIsPressed,
    TResult Function(_OnUniversitySelection value)? universityIsSelected,
    required TResult orElse(),
  }) {
    if (universityIsSelected != null) {
      return universityIsSelected(this);
    }
    return orElse();
  }
}

abstract class _OnUniversitySelection implements EducationEvent {
  const factory _OnUniversitySelection(int id) = _$_OnUniversitySelection;

  int get id;
  @JsonKey(ignore: true)
  _$OnUniversitySelectionCopyWith<_OnUniversitySelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EducationStateTearOff {
  const _$EducationStateTearOff();

  _EducationState call(
      {required bool componentIsValid, required bool isShowingErrorMessages}) {
    return _EducationState(
      componentIsValid: componentIsValid,
      isShowingErrorMessages: isShowingErrorMessages,
    );
  }
}

/// @nodoc
const $EducationState = _$EducationStateTearOff();

/// @nodoc
mixin _$EducationState {
  bool get componentIsValid => throw _privateConstructorUsedError;
  bool get isShowingErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EducationStateCopyWith<EducationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationStateCopyWith<$Res> {
  factory $EducationStateCopyWith(
          EducationState value, $Res Function(EducationState) then) =
      _$EducationStateCopyWithImpl<$Res>;
  $Res call({bool componentIsValid, bool isShowingErrorMessages});
}

/// @nodoc
class _$EducationStateCopyWithImpl<$Res>
    implements $EducationStateCopyWith<$Res> {
  _$EducationStateCopyWithImpl(this._value, this._then);

  final EducationState _value;
  // ignore: unused_field
  final $Res Function(EducationState) _then;

  @override
  $Res call({
    Object? componentIsValid = freezed,
    Object? isShowingErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      componentIsValid: componentIsValid == freezed
          ? _value.componentIsValid
          : componentIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingErrorMessages: isShowingErrorMessages == freezed
          ? _value.isShowingErrorMessages
          : isShowingErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$EducationStateCopyWith<$Res>
    implements $EducationStateCopyWith<$Res> {
  factory _$EducationStateCopyWith(
          _EducationState value, $Res Function(_EducationState) then) =
      __$EducationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool componentIsValid, bool isShowingErrorMessages});
}

/// @nodoc
class __$EducationStateCopyWithImpl<$Res>
    extends _$EducationStateCopyWithImpl<$Res>
    implements _$EducationStateCopyWith<$Res> {
  __$EducationStateCopyWithImpl(
      _EducationState _value, $Res Function(_EducationState) _then)
      : super(_value, (v) => _then(v as _EducationState));

  @override
  _EducationState get _value => super._value as _EducationState;

  @override
  $Res call({
    Object? componentIsValid = freezed,
    Object? isShowingErrorMessages = freezed,
  }) {
    return _then(_EducationState(
      componentIsValid: componentIsValid == freezed
          ? _value.componentIsValid
          : componentIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingErrorMessages: isShowingErrorMessages == freezed
          ? _value.isShowingErrorMessages
          : isShowingErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EducationState implements _EducationState {
  const _$_EducationState(
      {required this.componentIsValid, required this.isShowingErrorMessages});

  @override
  final bool componentIsValid;
  @override
  final bool isShowingErrorMessages;

  @override
  String toString() {
    return 'EducationState(componentIsValid: $componentIsValid, isShowingErrorMessages: $isShowingErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EducationState &&
            const DeepCollectionEquality()
                .equals(other.componentIsValid, componentIsValid) &&
            const DeepCollectionEquality()
                .equals(other.isShowingErrorMessages, isShowingErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(componentIsValid),
      const DeepCollectionEquality().hash(isShowingErrorMessages));

  @JsonKey(ignore: true)
  @override
  _$EducationStateCopyWith<_EducationState> get copyWith =>
      __$EducationStateCopyWithImpl<_EducationState>(this, _$identity);
}

abstract class _EducationState implements EducationState {
  const factory _EducationState(
      {required bool componentIsValid,
      required bool isShowingErrorMessages}) = _$_EducationState;

  @override
  bool get componentIsValid;
  @override
  bool get isShowingErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$EducationStateCopyWith<_EducationState> get copyWith =>
      throw _privateConstructorUsedError;
}
