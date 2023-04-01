// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoursesEventTearOff {
  const _$CoursesEventTearOff();

  EditEvent editEvent(Course course) {
    return EditEvent(
      course,
    );
  }

  AddEvent addEvent() {
    return const AddEvent();
  }

  UpdateEvent updateEvent() {
    return const UpdateEvent();
  }

  DeleteEvent deleteEvent(Course course) {
    return DeleteEvent(
      course,
    );
  }

  EditTeacherName editTeacherName(String name) {
    return EditTeacherName(
      name,
    );
  }

  EditCourseName editCourseName(String courseName) {
    return EditCourseName(
      courseName,
    );
  }

  EditOrganizationName editOrganizationName(String name) {
    return EditOrganizationName(
      name,
    );
  }

  EditLocation editLocation(Location location) {
    return EditLocation(
      location,
    );
  }

  EditStartDate editStartDate(Date startDate) {
    return EditStartDate(
      startDate,
    );
  }

  EditEndDate editEndDate(Date endDate) {
    return EditEndDate(
      endDate,
    );
  }
}

/// @nodoc
const $CoursesEvent = _$CoursesEventTearOff();

/// @nodoc
mixin _$CoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEvent value) editEvent,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesEventCopyWith<$Res> {
  factory $CoursesEventCopyWith(
          CoursesEvent value, $Res Function(CoursesEvent) then) =
      _$CoursesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoursesEventCopyWithImpl<$Res> implements $CoursesEventCopyWith<$Res> {
  _$CoursesEventCopyWithImpl(this._value, this._then);

  final CoursesEvent _value;
  // ignore: unused_field
  final $Res Function(CoursesEvent) _then;
}

/// @nodoc
abstract class $EditEventCopyWith<$Res> {
  factory $EditEventCopyWith(EditEvent value, $Res Function(EditEvent) then) =
      _$EditEventCopyWithImpl<$Res>;
  $Res call({Course course});
}

/// @nodoc
class _$EditEventCopyWithImpl<$Res> extends _$CoursesEventCopyWithImpl<$Res>
    implements $EditEventCopyWith<$Res> {
  _$EditEventCopyWithImpl(EditEvent _value, $Res Function(EditEvent) _then)
      : super(_value, (v) => _then(v as EditEvent));

  @override
  EditEvent get _value => super._value as EditEvent;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(EditEvent(
      course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }
}

/// @nodoc

class _$EditEvent implements EditEvent {
  const _$EditEvent(this.course);

  @override
  final Course course;

  @override
  String toString() {
    return 'CoursesEvent.editEvent(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditEvent &&
            const DeepCollectionEquality().equals(other.course, course));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(course));

  @JsonKey(ignore: true)
  @override
  $EditEventCopyWith<EditEvent> get copyWith =>
      _$EditEventCopyWithImpl<EditEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) {
    return editEvent(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) {
    return editEvent?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(course);
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
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
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
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
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
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(this);
    }
    return orElse();
  }
}

abstract class EditEvent implements CoursesEvent {
  const factory EditEvent(Course course) = _$EditEvent;

  Course get course;
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
class _$AddEventCopyWithImpl<$Res> extends _$CoursesEventCopyWithImpl<$Res>
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
    return 'CoursesEvent.addEvent()';
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
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) {
    return addEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) {
    return addEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
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
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
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
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
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
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(this);
    }
    return orElse();
  }
}

abstract class AddEvent implements CoursesEvent {
  const factory AddEvent() = _$AddEvent;
}

/// @nodoc
abstract class $UpdateEventCopyWith<$Res> {
  factory $UpdateEventCopyWith(
          UpdateEvent value, $Res Function(UpdateEvent) then) =
      _$UpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateEventCopyWithImpl<$Res> extends _$CoursesEventCopyWithImpl<$Res>
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
    return 'CoursesEvent.updateEvent()';
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
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) {
    return updateEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) {
    return updateEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
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
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
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
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
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
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(this);
    }
    return orElse();
  }
}

abstract class UpdateEvent implements CoursesEvent {
  const factory UpdateEvent() = _$UpdateEvent;
}

/// @nodoc
abstract class $DeleteEventCopyWith<$Res> {
  factory $DeleteEventCopyWith(
          DeleteEvent value, $Res Function(DeleteEvent) then) =
      _$DeleteEventCopyWithImpl<$Res>;
  $Res call({Course course});
}

/// @nodoc
class _$DeleteEventCopyWithImpl<$Res> extends _$CoursesEventCopyWithImpl<$Res>
    implements $DeleteEventCopyWith<$Res> {
  _$DeleteEventCopyWithImpl(
      DeleteEvent _value, $Res Function(DeleteEvent) _then)
      : super(_value, (v) => _then(v as DeleteEvent));

  @override
  DeleteEvent get _value => super._value as DeleteEvent;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(DeleteEvent(
      course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }
}

/// @nodoc

class _$DeleteEvent implements DeleteEvent {
  const _$DeleteEvent(this.course);

  @override
  final Course course;

  @override
  String toString() {
    return 'CoursesEvent.deleteEvent(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteEvent &&
            const DeepCollectionEquality().equals(other.course, course));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(course));

  @JsonKey(ignore: true)
  @override
  $DeleteEventCopyWith<DeleteEvent> get copyWith =>
      _$DeleteEventCopyWithImpl<DeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) {
    return deleteEvent(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) {
    return deleteEvent?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(course);
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
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
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
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
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
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteEvent implements CoursesEvent {
  const factory DeleteEvent(Course course) = _$DeleteEvent;

  Course get course;
  @JsonKey(ignore: true)
  $DeleteEventCopyWith<DeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTeacherNameCopyWith<$Res> {
  factory $EditTeacherNameCopyWith(
          EditTeacherName value, $Res Function(EditTeacherName) then) =
      _$EditTeacherNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$EditTeacherNameCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res>
    implements $EditTeacherNameCopyWith<$Res> {
  _$EditTeacherNameCopyWithImpl(
      EditTeacherName _value, $Res Function(EditTeacherName) _then)
      : super(_value, (v) => _then(v as EditTeacherName));

  @override
  EditTeacherName get _value => super._value as EditTeacherName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(EditTeacherName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTeacherName implements EditTeacherName {
  const _$EditTeacherName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CoursesEvent.editTeacherName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditTeacherName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $EditTeacherNameCopyWith<EditTeacherName> get copyWith =>
      _$EditTeacherNameCopyWithImpl<EditTeacherName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) {
    return editTeacherName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) {
    return editTeacherName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
    required TResult orElse(),
  }) {
    if (editTeacherName != null) {
      return editTeacherName(name);
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
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
  }) {
    return editTeacherName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
  }) {
    return editTeacherName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) {
    if (editTeacherName != null) {
      return editTeacherName(this);
    }
    return orElse();
  }
}

abstract class EditTeacherName implements CoursesEvent {
  const factory EditTeacherName(String name) = _$EditTeacherName;

  String get name;
  @JsonKey(ignore: true)
  $EditTeacherNameCopyWith<EditTeacherName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCourseNameCopyWith<$Res> {
  factory $EditCourseNameCopyWith(
          EditCourseName value, $Res Function(EditCourseName) then) =
      _$EditCourseNameCopyWithImpl<$Res>;
  $Res call({String courseName});
}

/// @nodoc
class _$EditCourseNameCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res>
    implements $EditCourseNameCopyWith<$Res> {
  _$EditCourseNameCopyWithImpl(
      EditCourseName _value, $Res Function(EditCourseName) _then)
      : super(_value, (v) => _then(v as EditCourseName));

  @override
  EditCourseName get _value => super._value as EditCourseName;

  @override
  $Res call({
    Object? courseName = freezed,
  }) {
    return _then(EditCourseName(
      courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditCourseName implements EditCourseName {
  const _$EditCourseName(this.courseName);

  @override
  final String courseName;

  @override
  String toString() {
    return 'CoursesEvent.editCourseName(courseName: $courseName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditCourseName &&
            const DeepCollectionEquality()
                .equals(other.courseName, courseName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(courseName));

  @JsonKey(ignore: true)
  @override
  $EditCourseNameCopyWith<EditCourseName> get copyWith =>
      _$EditCourseNameCopyWithImpl<EditCourseName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) {
    return editCourseName(courseName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) {
    return editCourseName?.call(courseName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
    required TResult orElse(),
  }) {
    if (editCourseName != null) {
      return editCourseName(courseName);
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
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
  }) {
    return editCourseName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
  }) {
    return editCourseName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) {
    if (editCourseName != null) {
      return editCourseName(this);
    }
    return orElse();
  }
}

abstract class EditCourseName implements CoursesEvent {
  const factory EditCourseName(String courseName) = _$EditCourseName;

  String get courseName;
  @JsonKey(ignore: true)
  $EditCourseNameCopyWith<EditCourseName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditOrganizationNameCopyWith<$Res> {
  factory $EditOrganizationNameCopyWith(EditOrganizationName value,
          $Res Function(EditOrganizationName) then) =
      _$EditOrganizationNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$EditOrganizationNameCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res>
    implements $EditOrganizationNameCopyWith<$Res> {
  _$EditOrganizationNameCopyWithImpl(
      EditOrganizationName _value, $Res Function(EditOrganizationName) _then)
      : super(_value, (v) => _then(v as EditOrganizationName));

  @override
  EditOrganizationName get _value => super._value as EditOrganizationName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(EditOrganizationName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditOrganizationName implements EditOrganizationName {
  const _$EditOrganizationName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CoursesEvent.editOrganizationName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditOrganizationName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $EditOrganizationNameCopyWith<EditOrganizationName> get copyWith =>
      _$EditOrganizationNameCopyWithImpl<EditOrganizationName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) {
    return editOrganizationName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) {
    return editOrganizationName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
    required TResult orElse(),
  }) {
    if (editOrganizationName != null) {
      return editOrganizationName(name);
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
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
  }) {
    return editOrganizationName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
  }) {
    return editOrganizationName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) {
    if (editOrganizationName != null) {
      return editOrganizationName(this);
    }
    return orElse();
  }
}

abstract class EditOrganizationName implements CoursesEvent {
  const factory EditOrganizationName(String name) = _$EditOrganizationName;

  String get name;
  @JsonKey(ignore: true)
  $EditOrganizationNameCopyWith<EditOrganizationName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditLocationCopyWith<$Res> {
  factory $EditLocationCopyWith(
          EditLocation value, $Res Function(EditLocation) then) =
      _$EditLocationCopyWithImpl<$Res>;
  $Res call({Location location});
}

/// @nodoc
class _$EditLocationCopyWithImpl<$Res> extends _$CoursesEventCopyWithImpl<$Res>
    implements $EditLocationCopyWith<$Res> {
  _$EditLocationCopyWithImpl(
      EditLocation _value, $Res Function(EditLocation) _then)
      : super(_value, (v) => _then(v as EditLocation));

  @override
  EditLocation get _value => super._value as EditLocation;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(EditLocation(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }
}

/// @nodoc

class _$EditLocation implements EditLocation {
  const _$EditLocation(this.location);

  @override
  final Location location;

  @override
  String toString() {
    return 'CoursesEvent.editLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditLocation &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $EditLocationCopyWith<EditLocation> get copyWith =>
      _$EditLocationCopyWithImpl<EditLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) {
    return editLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) {
    return editLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
    required TResult orElse(),
  }) {
    if (editLocation != null) {
      return editLocation(location);
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
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
  }) {
    return editLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
  }) {
    return editLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) {
    if (editLocation != null) {
      return editLocation(this);
    }
    return orElse();
  }
}

abstract class EditLocation implements CoursesEvent {
  const factory EditLocation(Location location) = _$EditLocation;

  Location get location;
  @JsonKey(ignore: true)
  $EditLocationCopyWith<EditLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStartDateCopyWith<$Res> {
  factory $EditStartDateCopyWith(
          EditStartDate value, $Res Function(EditStartDate) then) =
      _$EditStartDateCopyWithImpl<$Res>;
  $Res call({Date startDate});
}

/// @nodoc
class _$EditStartDateCopyWithImpl<$Res> extends _$CoursesEventCopyWithImpl<$Res>
    implements $EditStartDateCopyWith<$Res> {
  _$EditStartDateCopyWithImpl(
      EditStartDate _value, $Res Function(EditStartDate) _then)
      : super(_value, (v) => _then(v as EditStartDate));

  @override
  EditStartDate get _value => super._value as EditStartDate;

  @override
  $Res call({
    Object? startDate = freezed,
  }) {
    return _then(EditStartDate(
      startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Date,
    ));
  }
}

/// @nodoc

class _$EditStartDate implements EditStartDate {
  const _$EditStartDate(this.startDate);

  @override
  final Date startDate;

  @override
  String toString() {
    return 'CoursesEvent.editStartDate(startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditStartDate &&
            const DeepCollectionEquality().equals(other.startDate, startDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(startDate));

  @JsonKey(ignore: true)
  @override
  $EditStartDateCopyWith<EditStartDate> get copyWith =>
      _$EditStartDateCopyWithImpl<EditStartDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) {
    return editStartDate(startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) {
    return editStartDate?.call(startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
    required TResult orElse(),
  }) {
    if (editStartDate != null) {
      return editStartDate(startDate);
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
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
  }) {
    return editStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
  }) {
    return editStartDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) {
    if (editStartDate != null) {
      return editStartDate(this);
    }
    return orElse();
  }
}

abstract class EditStartDate implements CoursesEvent {
  const factory EditStartDate(Date startDate) = _$EditStartDate;

  Date get startDate;
  @JsonKey(ignore: true)
  $EditStartDateCopyWith<EditStartDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditEndDateCopyWith<$Res> {
  factory $EditEndDateCopyWith(
          EditEndDate value, $Res Function(EditEndDate) then) =
      _$EditEndDateCopyWithImpl<$Res>;
  $Res call({Date endDate});
}

/// @nodoc
class _$EditEndDateCopyWithImpl<$Res> extends _$CoursesEventCopyWithImpl<$Res>
    implements $EditEndDateCopyWith<$Res> {
  _$EditEndDateCopyWithImpl(
      EditEndDate _value, $Res Function(EditEndDate) _then)
      : super(_value, (v) => _then(v as EditEndDate));

  @override
  EditEndDate get _value => super._value as EditEndDate;

  @override
  $Res call({
    Object? endDate = freezed,
  }) {
    return _then(EditEndDate(
      endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Date,
    ));
  }
}

/// @nodoc

class _$EditEndDate implements EditEndDate {
  const _$EditEndDate(this.endDate);

  @override
  final Date endDate;

  @override
  String toString() {
    return 'CoursesEvent.editEndDate(endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditEndDate &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  $EditEndDateCopyWith<EditEndDate> get copyWith =>
      _$EditEndDateCopyWithImpl<EditEndDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) editEvent,
    required TResult Function() addEvent,
    required TResult Function() updateEvent,
    required TResult Function(Course course) deleteEvent,
    required TResult Function(String name) editTeacherName,
    required TResult Function(String courseName) editCourseName,
    required TResult Function(String name) editOrganizationName,
    required TResult Function(Location location) editLocation,
    required TResult Function(Date startDate) editStartDate,
    required TResult Function(Date endDate) editEndDate,
  }) {
    return editEndDate(endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
  }) {
    return editEndDate?.call(endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? editEvent,
    TResult Function()? addEvent,
    TResult Function()? updateEvent,
    TResult Function(Course course)? deleteEvent,
    TResult Function(String name)? editTeacherName,
    TResult Function(String courseName)? editCourseName,
    TResult Function(String name)? editOrganizationName,
    TResult Function(Location location)? editLocation,
    TResult Function(Date startDate)? editStartDate,
    TResult Function(Date endDate)? editEndDate,
    required TResult orElse(),
  }) {
    if (editEndDate != null) {
      return editEndDate(endDate);
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
    required TResult Function(EditTeacherName value) editTeacherName,
    required TResult Function(EditCourseName value) editCourseName,
    required TResult Function(EditOrganizationName value) editOrganizationName,
    required TResult Function(EditLocation value) editLocation,
    required TResult Function(EditStartDate value) editStartDate,
    required TResult Function(EditEndDate value) editEndDate,
  }) {
    return editEndDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
  }) {
    return editEndDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEvent value)? editEvent,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(EditTeacherName value)? editTeacherName,
    TResult Function(EditCourseName value)? editCourseName,
    TResult Function(EditOrganizationName value)? editOrganizationName,
    TResult Function(EditLocation value)? editLocation,
    TResult Function(EditStartDate value)? editStartDate,
    TResult Function(EditEndDate value)? editEndDate,
    required TResult orElse(),
  }) {
    if (editEndDate != null) {
      return editEndDate(this);
    }
    return orElse();
  }
}

abstract class EditEndDate implements CoursesEvent {
  const factory EditEndDate(Date endDate) = _$EditEndDate;

  Date get endDate;
  @JsonKey(ignore: true)
  $EditEndDateCopyWith<EditEndDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CoursesStateTearOff {
  const _$CoursesStateTearOff();

  _CoursesState call(
      {required Course course,
      required List<Course> courses,
      required String organizationErrorMessage,
      required String courseErrorMessage,
      required String teacherErrorMessage,
      required String locationErrorMessage,
      required Option<Either<Failure, Unit>> updateCourseResponse,
      required Option<Either<Failure, int>> addCourseResponse,
      required Option<Either<Failure, Unit>> deleteCourseResponse}) {
    return _CoursesState(
      course: course,
      courses: courses,
      organizationErrorMessage: organizationErrorMessage,
      courseErrorMessage: courseErrorMessage,
      teacherErrorMessage: teacherErrorMessage,
      locationErrorMessage: locationErrorMessage,
      updateCourseResponse: updateCourseResponse,
      addCourseResponse: addCourseResponse,
      deleteCourseResponse: deleteCourseResponse,
    );
  }
}

/// @nodoc
const $CoursesState = _$CoursesStateTearOff();

/// @nodoc
mixin _$CoursesState {
  Course get course => throw _privateConstructorUsedError;
  List<Course> get courses => throw _privateConstructorUsedError;
  String get organizationErrorMessage => throw _privateConstructorUsedError;
  String get courseErrorMessage => throw _privateConstructorUsedError;
  String get teacherErrorMessage => throw _privateConstructorUsedError;
  String get locationErrorMessage => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get updateCourseResponse =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, int>> get addCourseResponse =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get deleteCourseResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoursesStateCopyWith<CoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesStateCopyWith<$Res> {
  factory $CoursesStateCopyWith(
          CoursesState value, $Res Function(CoursesState) then) =
      _$CoursesStateCopyWithImpl<$Res>;
  $Res call(
      {Course course,
      List<Course> courses,
      String organizationErrorMessage,
      String courseErrorMessage,
      String teacherErrorMessage,
      String locationErrorMessage,
      Option<Either<Failure, Unit>> updateCourseResponse,
      Option<Either<Failure, int>> addCourseResponse,
      Option<Either<Failure, Unit>> deleteCourseResponse});
}

/// @nodoc
class _$CoursesStateCopyWithImpl<$Res> implements $CoursesStateCopyWith<$Res> {
  _$CoursesStateCopyWithImpl(this._value, this._then);

  final CoursesState _value;
  // ignore: unused_field
  final $Res Function(CoursesState) _then;

  @override
  $Res call({
    Object? course = freezed,
    Object? courses = freezed,
    Object? organizationErrorMessage = freezed,
    Object? courseErrorMessage = freezed,
    Object? teacherErrorMessage = freezed,
    Object? locationErrorMessage = freezed,
    Object? updateCourseResponse = freezed,
    Object? addCourseResponse = freezed,
    Object? deleteCourseResponse = freezed,
  }) {
    return _then(_value.copyWith(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      organizationErrorMessage: organizationErrorMessage == freezed
          ? _value.organizationErrorMessage
          : organizationErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      courseErrorMessage: courseErrorMessage == freezed
          ? _value.courseErrorMessage
          : courseErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      teacherErrorMessage: teacherErrorMessage == freezed
          ? _value.teacherErrorMessage
          : teacherErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      locationErrorMessage: locationErrorMessage == freezed
          ? _value.locationErrorMessage
          : locationErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      updateCourseResponse: updateCourseResponse == freezed
          ? _value.updateCourseResponse
          : updateCourseResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      addCourseResponse: addCourseResponse == freezed
          ? _value.addCourseResponse
          : addCourseResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, int>>,
      deleteCourseResponse: deleteCourseResponse == freezed
          ? _value.deleteCourseResponse
          : deleteCourseResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$CoursesStateCopyWith<$Res>
    implements $CoursesStateCopyWith<$Res> {
  factory _$CoursesStateCopyWith(
          _CoursesState value, $Res Function(_CoursesState) then) =
      __$CoursesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Course course,
      List<Course> courses,
      String organizationErrorMessage,
      String courseErrorMessage,
      String teacherErrorMessage,
      String locationErrorMessage,
      Option<Either<Failure, Unit>> updateCourseResponse,
      Option<Either<Failure, int>> addCourseResponse,
      Option<Either<Failure, Unit>> deleteCourseResponse});
}

/// @nodoc
class __$CoursesStateCopyWithImpl<$Res> extends _$CoursesStateCopyWithImpl<$Res>
    implements _$CoursesStateCopyWith<$Res> {
  __$CoursesStateCopyWithImpl(
      _CoursesState _value, $Res Function(_CoursesState) _then)
      : super(_value, (v) => _then(v as _CoursesState));

  @override
  _CoursesState get _value => super._value as _CoursesState;

  @override
  $Res call({
    Object? course = freezed,
    Object? courses = freezed,
    Object? organizationErrorMessage = freezed,
    Object? courseErrorMessage = freezed,
    Object? teacherErrorMessage = freezed,
    Object? locationErrorMessage = freezed,
    Object? updateCourseResponse = freezed,
    Object? addCourseResponse = freezed,
    Object? deleteCourseResponse = freezed,
  }) {
    return _then(_CoursesState(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      organizationErrorMessage: organizationErrorMessage == freezed
          ? _value.organizationErrorMessage
          : organizationErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      courseErrorMessage: courseErrorMessage == freezed
          ? _value.courseErrorMessage
          : courseErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      teacherErrorMessage: teacherErrorMessage == freezed
          ? _value.teacherErrorMessage
          : teacherErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      locationErrorMessage: locationErrorMessage == freezed
          ? _value.locationErrorMessage
          : locationErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      updateCourseResponse: updateCourseResponse == freezed
          ? _value.updateCourseResponse
          : updateCourseResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      addCourseResponse: addCourseResponse == freezed
          ? _value.addCourseResponse
          : addCourseResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, int>>,
      deleteCourseResponse: deleteCourseResponse == freezed
          ? _value.deleteCourseResponse
          : deleteCourseResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CoursesState implements _CoursesState {
  const _$_CoursesState(
      {required this.course,
      required this.courses,
      required this.organizationErrorMessage,
      required this.courseErrorMessage,
      required this.teacherErrorMessage,
      required this.locationErrorMessage,
      required this.updateCourseResponse,
      required this.addCourseResponse,
      required this.deleteCourseResponse});

  @override
  final Course course;
  @override
  final List<Course> courses;
  @override
  final String organizationErrorMessage;
  @override
  final String courseErrorMessage;
  @override
  final String teacherErrorMessage;
  @override
  final String locationErrorMessage;
  @override
  final Option<Either<Failure, Unit>> updateCourseResponse;
  @override
  final Option<Either<Failure, int>> addCourseResponse;
  @override
  final Option<Either<Failure, Unit>> deleteCourseResponse;

  @override
  String toString() {
    return 'CoursesState(course: $course, courses: $courses, organizationErrorMessage: $organizationErrorMessage, courseErrorMessage: $courseErrorMessage, teacherErrorMessage: $teacherErrorMessage, locationErrorMessage: $locationErrorMessage, updateCourseResponse: $updateCourseResponse, addCourseResponse: $addCourseResponse, deleteCourseResponse: $deleteCourseResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoursesState &&
            const DeepCollectionEquality().equals(other.course, course) &&
            const DeepCollectionEquality().equals(other.courses, courses) &&
            const DeepCollectionEquality().equals(
                other.organizationErrorMessage, organizationErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.courseErrorMessage, courseErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.teacherErrorMessage, teacherErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.locationErrorMessage, locationErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.updateCourseResponse, updateCourseResponse) &&
            const DeepCollectionEquality()
                .equals(other.addCourseResponse, addCourseResponse) &&
            const DeepCollectionEquality()
                .equals(other.deleteCourseResponse, deleteCourseResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(course),
      const DeepCollectionEquality().hash(courses),
      const DeepCollectionEquality().hash(organizationErrorMessage),
      const DeepCollectionEquality().hash(courseErrorMessage),
      const DeepCollectionEquality().hash(teacherErrorMessage),
      const DeepCollectionEquality().hash(locationErrorMessage),
      const DeepCollectionEquality().hash(updateCourseResponse),
      const DeepCollectionEquality().hash(addCourseResponse),
      const DeepCollectionEquality().hash(deleteCourseResponse));

  @JsonKey(ignore: true)
  @override
  _$CoursesStateCopyWith<_CoursesState> get copyWith =>
      __$CoursesStateCopyWithImpl<_CoursesState>(this, _$identity);
}

abstract class _CoursesState implements CoursesState {
  const factory _CoursesState(
          {required Course course,
          required List<Course> courses,
          required String organizationErrorMessage,
          required String courseErrorMessage,
          required String teacherErrorMessage,
          required String locationErrorMessage,
          required Option<Either<Failure, Unit>> updateCourseResponse,
          required Option<Either<Failure, int>> addCourseResponse,
          required Option<Either<Failure, Unit>> deleteCourseResponse}) =
      _$_CoursesState;

  @override
  Course get course;
  @override
  List<Course> get courses;
  @override
  String get organizationErrorMessage;
  @override
  String get courseErrorMessage;
  @override
  String get teacherErrorMessage;
  @override
  String get locationErrorMessage;
  @override
  Option<Either<Failure, Unit>> get updateCourseResponse;
  @override
  Option<Either<Failure, int>> get addCourseResponse;
  @override
  Option<Either<Failure, Unit>> get deleteCourseResponse;
  @override
  @JsonKey(ignore: true)
  _$CoursesStateCopyWith<_CoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}
