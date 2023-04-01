// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'skills_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SkillsEventTearOff {
  const _$SkillsEventTearOff();

  EditEvent editEvent(Skill skill) {
    return EditEvent(
      skill,
    );
  }

  AddEvent addEvent() {
    return const AddEvent();
  }

  UpdateEvent updateEvent() {
    return const UpdateEvent();
  }

  DeleteEvent deleteEvent(Skill skill) {
    return DeleteEvent(
      skill,
    );
  }

  EditSkillName editSkillName(String name) {
    return EditSkillName(
      name,
    );
  }

  EditSkillLevel editSkillLevel(String level) {
    return EditSkillLevel(
      level,
    );
  }
}

/// @nodoc
const $SkillsEvent = _$SkillsEventTearOff();

/// @nodoc
mixin _$SkillsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Skill skill) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Skill skill) deleteEvent,
    required TResult Function(String name) editSkillName,
    required TResult Function(String level) editSkillLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(EditSkillName value) editSkillName,
    required TResult Function(EditSkillLevel value) editSkillLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsEventCopyWith<$Res> {
  factory $SkillsEventCopyWith(
          SkillsEvent value, $Res Function(SkillsEvent) then) =
      _$SkillsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SkillsEventCopyWithImpl<$Res> implements $SkillsEventCopyWith<$Res> {
  _$SkillsEventCopyWithImpl(this._value, this._then);

  final SkillsEvent _value;
  // ignore: unused_field
  final $Res Function(SkillsEvent) _then;
}

/// @nodoc
abstract class $EditEventCopyWith<$Res> {
  factory $EditEventCopyWith(EditEvent value, $Res Function(EditEvent) then) =
      _$EditEventCopyWithImpl<$Res>;
  $Res call({Skill skill});
}

/// @nodoc
class _$EditEventCopyWithImpl<$Res> extends _$SkillsEventCopyWithImpl<$Res>
    implements $EditEventCopyWith<$Res> {
  _$EditEventCopyWithImpl(EditEvent _value, $Res Function(EditEvent) _then)
      : super(_value, (v) => _then(v as EditEvent));

  @override
  EditEvent get _value => super._value as EditEvent;

  @override
  $Res call({
    Object? skill = freezed,
  }) {
    return _then(EditEvent(
      skill == freezed
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Skill,
    ));
  }
}

/// @nodoc

class _$EditEvent implements EditEvent {
  const _$EditEvent(this.skill);

  @override
  final Skill skill;

  @override
  String toString() {
    return 'SkillsEvent.editEvent(skill: $skill)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditEvent &&
            const DeepCollectionEquality().equals(other.skill, skill));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(skill));

  @JsonKey(ignore: true)
  @override
  $EditEventCopyWith<EditEvent> get copyWith =>
      _$EditEventCopyWithImpl<EditEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Skill skill) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Skill skill) deleteEvent,
    required TResult Function(String name) editSkillName,
    required TResult Function(String level) editSkillLevel,
  }) {
    return editEvent(skill);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
  }) {
    return editEvent?.call(skill);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(skill);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(EditSkillName value) editSkillName,
    required TResult Function(EditSkillLevel value) editSkillLevel,
  }) {
    return editEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
  }) {
    return editEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(this);
    }
    return orElse();
  }
}

abstract class EditEvent implements SkillsEvent {
  const factory EditEvent(Skill skill) = _$EditEvent;

  Skill get skill;
  @JsonKey(ignore: true)
  $EditEventCopyWith<EditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEventCopyWith<$Res> {
  factory $AddEventCopyWith(AddEvent value, $Res Function(AddEvent) then) =
      _$AddEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddEventCopyWithImpl<$Res> extends _$SkillsEventCopyWithImpl<$Res>
    implements $AddEventCopyWith<$Res> {
  _$AddEventCopyWithImpl(AddEvent _value, $Res Function(AddEvent) _then)
      : super(_value, (v) => _then(v as AddEvent));

  @override
  AddEvent get _value => super._value as AddEvent;
}

/// @nodoc

class _$AddEvent implements AddEvent {
  const _$AddEvent();

  @override
  String toString() {
    return 'SkillsEvent.addEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Skill skill) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Skill skill) deleteEvent,
    required TResult Function(String name) editSkillName,
    required TResult Function(String level) editSkillLevel,
  }) {
    return addEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
  }) {
    return addEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(EditSkillName value) editSkillName,
    required TResult Function(EditSkillLevel value) editSkillLevel,
  }) {
    return addEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
  }) {
    return addEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(this);
    }
    return orElse();
  }
}

abstract class AddEvent implements SkillsEvent {
  const factory AddEvent() = _$AddEvent;
}

/// @nodoc
abstract class $UpdateEventCopyWith<$Res> {
  factory $UpdateEventCopyWith(
          UpdateEvent value, $Res Function(UpdateEvent) then) =
      _$UpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateEventCopyWithImpl<$Res> extends _$SkillsEventCopyWithImpl<$Res>
    implements $UpdateEventCopyWith<$Res> {
  _$UpdateEventCopyWithImpl(
      UpdateEvent _value, $Res Function(UpdateEvent) _then)
      : super(_value, (v) => _then(v as UpdateEvent));

  @override
  UpdateEvent get _value => super._value as UpdateEvent;
}

/// @nodoc

class _$UpdateEvent implements UpdateEvent {
  const _$UpdateEvent();

  @override
  String toString() {
    return 'SkillsEvent.updateEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Skill skill) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Skill skill) deleteEvent,
    required TResult Function(String name) editSkillName,
    required TResult Function(String level) editSkillLevel,
  }) {
    return updateEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
  }) {
    return updateEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(EditSkillName value) editSkillName,
    required TResult Function(EditSkillLevel value) editSkillLevel,
  }) {
    return updateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
  }) {
    return updateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(this);
    }
    return orElse();
  }
}

abstract class UpdateEvent implements SkillsEvent {
  const factory UpdateEvent() = _$UpdateEvent;
}

/// @nodoc
abstract class $DeleteEventCopyWith<$Res> {
  factory $DeleteEventCopyWith(
          DeleteEvent value, $Res Function(DeleteEvent) then) =
      _$DeleteEventCopyWithImpl<$Res>;
  $Res call({Skill skill});
}

/// @nodoc
class _$DeleteEventCopyWithImpl<$Res> extends _$SkillsEventCopyWithImpl<$Res>
    implements $DeleteEventCopyWith<$Res> {
  _$DeleteEventCopyWithImpl(
      DeleteEvent _value, $Res Function(DeleteEvent) _then)
      : super(_value, (v) => _then(v as DeleteEvent));

  @override
  DeleteEvent get _value => super._value as DeleteEvent;

  @override
  $Res call({
    Object? skill = freezed,
  }) {
    return _then(DeleteEvent(
      skill == freezed
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Skill,
    ));
  }
}

/// @nodoc

class _$DeleteEvent implements DeleteEvent {
  const _$DeleteEvent(this.skill);

  @override
  final Skill skill;

  @override
  String toString() {
    return 'SkillsEvent.deleteEvent(skill: $skill)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteEvent &&
            const DeepCollectionEquality().equals(other.skill, skill));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(skill));

  @JsonKey(ignore: true)
  @override
  $DeleteEventCopyWith<DeleteEvent> get copyWith =>
      _$DeleteEventCopyWithImpl<DeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Skill skill) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Skill skill) deleteEvent,
    required TResult Function(String name) editSkillName,
    required TResult Function(String level) editSkillLevel,
  }) {
    return deleteEvent(skill);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
  }) {
    return deleteEvent?.call(skill);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(skill);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(EditSkillName value) editSkillName,
    required TResult Function(EditSkillLevel value) editSkillLevel,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteEvent implements SkillsEvent {
  const factory DeleteEvent(Skill skill) = _$DeleteEvent;

  Skill get skill;
  @JsonKey(ignore: true)
  $DeleteEventCopyWith<DeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSkillNameCopyWith<$Res> {
  factory $EditSkillNameCopyWith(
          EditSkillName value, $Res Function(EditSkillName) then) =
      _$EditSkillNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$EditSkillNameCopyWithImpl<$Res> extends _$SkillsEventCopyWithImpl<$Res>
    implements $EditSkillNameCopyWith<$Res> {
  _$EditSkillNameCopyWithImpl(
      EditSkillName _value, $Res Function(EditSkillName) _then)
      : super(_value, (v) => _then(v as EditSkillName));

  @override
  EditSkillName get _value => super._value as EditSkillName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(EditSkillName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditSkillName implements EditSkillName {
  const _$EditSkillName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SkillsEvent.editSkillName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditSkillName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $EditSkillNameCopyWith<EditSkillName> get copyWith =>
      _$EditSkillNameCopyWithImpl<EditSkillName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Skill skill) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Skill skill) deleteEvent,
    required TResult Function(String name) editSkillName,
    required TResult Function(String level) editSkillLevel,
  }) {
    return editSkillName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
  }) {
    return editSkillName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (editSkillName != null) {
      return editSkillName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(EditSkillName value) editSkillName,
    required TResult Function(EditSkillLevel value) editSkillLevel,
  }) {
    return editSkillName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
  }) {
    return editSkillName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (editSkillName != null) {
      return editSkillName(this);
    }
    return orElse();
  }
}

abstract class EditSkillName implements SkillsEvent {
  const factory EditSkillName(String name) = _$EditSkillName;

  String get name;
  @JsonKey(ignore: true)
  $EditSkillNameCopyWith<EditSkillName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSkillLevelCopyWith<$Res> {
  factory $EditSkillLevelCopyWith(
          EditSkillLevel value, $Res Function(EditSkillLevel) then) =
      _$EditSkillLevelCopyWithImpl<$Res>;
  $Res call({String level});
}

/// @nodoc
class _$EditSkillLevelCopyWithImpl<$Res> extends _$SkillsEventCopyWithImpl<$Res>
    implements $EditSkillLevelCopyWith<$Res> {
  _$EditSkillLevelCopyWithImpl(
      EditSkillLevel _value, $Res Function(EditSkillLevel) _then)
      : super(_value, (v) => _then(v as EditSkillLevel));

  @override
  EditSkillLevel get _value => super._value as EditSkillLevel;

  @override
  $Res call({
    Object? level = freezed,
  }) {
    return _then(EditSkillLevel(
      level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditSkillLevel implements EditSkillLevel {
  const _$EditSkillLevel(this.level);

  @override
  final String level;

  @override
  String toString() {
    return 'SkillsEvent.editSkillLevel(level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditSkillLevel &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  $EditSkillLevelCopyWith<EditSkillLevel> get copyWith =>
      _$EditSkillLevelCopyWithImpl<EditSkillLevel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Skill skill) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Skill skill) deleteEvent,
    required TResult Function(String name) editSkillName,
    required TResult Function(String level) editSkillLevel,
  }) {
    return editSkillLevel(level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
  }) {
    return editSkillLevel?.call(level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Skill skill)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Skill skill)? deleteEvent,
    TResult Function(String name)? editSkillName,
    TResult Function(String level)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (editSkillLevel != null) {
      return editSkillLevel(level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(EditSkillName value) editSkillName,
    required TResult Function(EditSkillLevel value) editSkillLevel,
  }) {
    return editSkillLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
  }) {
    return editSkillLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditSkillName value)? editSkillName,
    TResult Function(EditSkillLevel value)? editSkillLevel,
    required TResult orElse(),
  }) {
    if (editSkillLevel != null) {
      return editSkillLevel(this);
    }
    return orElse();
  }
}

abstract class EditSkillLevel implements SkillsEvent {
  const factory EditSkillLevel(String level) = _$EditSkillLevel;

  String get level;
  @JsonKey(ignore: true)
  $EditSkillLevelCopyWith<EditSkillLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SkillsStateTearOff {
  const _$SkillsStateTearOff();

  _SkillsState call(
      {required Skill skill,
      required List<Skill> skills,
      required String levelErrorMessage,
      required String nameErrorMessage,
      required Option<Either<Failure, Unit>> updateSkillResponse,
      required Option<Either<Failure, int>> addSkillResponse,
      required Option<Either<Failure, Unit>> deleteSkillResponse}) {
    return _SkillsState(
      skill: skill,
      skills: skills,
      levelErrorMessage: levelErrorMessage,
      nameErrorMessage: nameErrorMessage,
      updateSkillResponse: updateSkillResponse,
      addSkillResponse: addSkillResponse,
      deleteSkillResponse: deleteSkillResponse,
    );
  }
}

/// @nodoc
const $SkillsState = _$SkillsStateTearOff();

/// @nodoc
mixin _$SkillsState {
  Skill get skill => throw _privateConstructorUsedError;
  List<Skill> get skills => throw _privateConstructorUsedError;
  String get levelErrorMessage => throw _privateConstructorUsedError;
  String get nameErrorMessage => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get updateSkillResponse =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, int>> get addSkillResponse =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get deleteSkillResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SkillsStateCopyWith<SkillsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsStateCopyWith<$Res> {
  factory $SkillsStateCopyWith(
          SkillsState value, $Res Function(SkillsState) then) =
      _$SkillsStateCopyWithImpl<$Res>;
  $Res call(
      {Skill skill,
      List<Skill> skills,
      String levelErrorMessage,
      String nameErrorMessage,
      Option<Either<Failure, Unit>> updateSkillResponse,
      Option<Either<Failure, int>> addSkillResponse,
      Option<Either<Failure, Unit>> deleteSkillResponse});
}

/// @nodoc
class _$SkillsStateCopyWithImpl<$Res> implements $SkillsStateCopyWith<$Res> {
  _$SkillsStateCopyWithImpl(this._value, this._then);

  final SkillsState _value;
  // ignore: unused_field
  final $Res Function(SkillsState) _then;

  @override
  $Res call({
    Object? skill = freezed,
    Object? skills = freezed,
    Object? levelErrorMessage = freezed,
    Object? nameErrorMessage = freezed,
    Object? updateSkillResponse = freezed,
    Object? addSkillResponse = freezed,
    Object? deleteSkillResponse = freezed,
  }) {
    return _then(_value.copyWith(
      skill: skill == freezed
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Skill,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      levelErrorMessage: levelErrorMessage == freezed
          ? _value.levelErrorMessage
          : levelErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      nameErrorMessage: nameErrorMessage == freezed
          ? _value.nameErrorMessage
          : nameErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      updateSkillResponse: updateSkillResponse == freezed
          ? _value.updateSkillResponse
          : updateSkillResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      addSkillResponse: addSkillResponse == freezed
          ? _value.addSkillResponse
          : addSkillResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, int>>,
      deleteSkillResponse: deleteSkillResponse == freezed
          ? _value.deleteSkillResponse
          : deleteSkillResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SkillsStateCopyWith<$Res>
    implements $SkillsStateCopyWith<$Res> {
  factory _$SkillsStateCopyWith(
          _SkillsState value, $Res Function(_SkillsState) then) =
      __$SkillsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Skill skill,
      List<Skill> skills,
      String levelErrorMessage,
      String nameErrorMessage,
      Option<Either<Failure, Unit>> updateSkillResponse,
      Option<Either<Failure, int>> addSkillResponse,
      Option<Either<Failure, Unit>> deleteSkillResponse});
}

/// @nodoc
class __$SkillsStateCopyWithImpl<$Res> extends _$SkillsStateCopyWithImpl<$Res>
    implements _$SkillsStateCopyWith<$Res> {
  __$SkillsStateCopyWithImpl(
      _SkillsState _value, $Res Function(_SkillsState) _then)
      : super(_value, (v) => _then(v as _SkillsState));

  @override
  _SkillsState get _value => super._value as _SkillsState;

  @override
  $Res call({
    Object? skill = freezed,
    Object? skills = freezed,
    Object? levelErrorMessage = freezed,
    Object? nameErrorMessage = freezed,
    Object? updateSkillResponse = freezed,
    Object? addSkillResponse = freezed,
    Object? deleteSkillResponse = freezed,
  }) {
    return _then(_SkillsState(
      skill: skill == freezed
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Skill,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      levelErrorMessage: levelErrorMessage == freezed
          ? _value.levelErrorMessage
          : levelErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      nameErrorMessage: nameErrorMessage == freezed
          ? _value.nameErrorMessage
          : nameErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      updateSkillResponse: updateSkillResponse == freezed
          ? _value.updateSkillResponse
          : updateSkillResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      addSkillResponse: addSkillResponse == freezed
          ? _value.addSkillResponse
          : addSkillResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, int>>,
      deleteSkillResponse: deleteSkillResponse == freezed
          ? _value.deleteSkillResponse
          : deleteSkillResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SkillsState implements _SkillsState {
  const _$_SkillsState(
      {required this.skill,
      required this.skills,
      required this.levelErrorMessage,
      required this.nameErrorMessage,
      required this.updateSkillResponse,
      required this.addSkillResponse,
      required this.deleteSkillResponse});

  @override
  final Skill skill;
  @override
  final List<Skill> skills;
  @override
  final String levelErrorMessage;
  @override
  final String nameErrorMessage;
  @override
  final Option<Either<Failure, Unit>> updateSkillResponse;
  @override
  final Option<Either<Failure, int>> addSkillResponse;
  @override
  final Option<Either<Failure, Unit>> deleteSkillResponse;

  @override
  String toString() {
    return 'SkillsState(skill: $skill, skills: $skills, levelErrorMessage: $levelErrorMessage, nameErrorMessage: $nameErrorMessage, updateSkillResponse: $updateSkillResponse, addSkillResponse: $addSkillResponse, deleteSkillResponse: $deleteSkillResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkillsState &&
            const DeepCollectionEquality().equals(other.skill, skill) &&
            const DeepCollectionEquality().equals(other.skills, skills) &&
            const DeepCollectionEquality()
                .equals(other.levelErrorMessage, levelErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.nameErrorMessage, nameErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.updateSkillResponse, updateSkillResponse) &&
            const DeepCollectionEquality()
                .equals(other.addSkillResponse, addSkillResponse) &&
            const DeepCollectionEquality()
                .equals(other.deleteSkillResponse, deleteSkillResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(skill),
      const DeepCollectionEquality().hash(skills),
      const DeepCollectionEquality().hash(levelErrorMessage),
      const DeepCollectionEquality().hash(nameErrorMessage),
      const DeepCollectionEquality().hash(updateSkillResponse),
      const DeepCollectionEquality().hash(addSkillResponse),
      const DeepCollectionEquality().hash(deleteSkillResponse));

  @JsonKey(ignore: true)
  @override
  _$SkillsStateCopyWith<_SkillsState> get copyWith =>
      __$SkillsStateCopyWithImpl<_SkillsState>(this, _$identity);
}

abstract class _SkillsState implements SkillsState {
  const factory _SkillsState(
          {required Skill skill,
          required List<Skill> skills,
          required String levelErrorMessage,
          required String nameErrorMessage,
          required Option<Either<Failure, Unit>> updateSkillResponse,
          required Option<Either<Failure, int>> addSkillResponse,
          required Option<Either<Failure, Unit>> deleteSkillResponse}) =
      _$_SkillsState;

  @override
  Skill get skill;
  @override
  List<Skill> get skills;
  @override
  String get levelErrorMessage;
  @override
  String get nameErrorMessage;
  @override
  Option<Either<Failure, Unit>> get updateSkillResponse;
  @override
  Option<Either<Failure, int>> get addSkillResponse;
  @override
  Option<Either<Failure, Unit>> get deleteSkillResponse;
  @override
  @JsonKey(ignore: true)
  _$SkillsStateCopyWith<_SkillsState> get copyWith =>
      throw _privateConstructorUsedError;
}
