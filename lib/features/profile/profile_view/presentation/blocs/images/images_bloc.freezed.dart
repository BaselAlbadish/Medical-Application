// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'images_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImagesEventTearOff {
  const _$ImagesEventTearOff();

  UpdateState updateState(ImagesState state) {
    return UpdateState(
      state,
    );
  }

  UpdateProfileEvent updateProfileEvent() {
    return const UpdateProfileEvent();
  }

  UpdateCoverEvent updateCoverEvent() {
    return const UpdateCoverEvent();
  }

  EditProfileImage editProfileImage(XFile? profileImage) {
    return EditProfileImage(
      profileImage,
    );
  }

  EditCoverImage editCoverImage(XFile? coverImage) {
    return EditCoverImage(
      coverImage,
    );
  }
}

/// @nodoc
const $ImagesEvent = _$ImagesEventTearOff();

/// @nodoc
mixin _$ImagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImagesState state) updateState,
    required TResult Function() updateProfileEvent,
    required TResult Function() updateCoverEvent,
    required TResult Function(XFile? profileImage) editProfileImage,
    required TResult Function(XFile? coverImage) editCoverImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateState value) updateState,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(UpdateCoverEvent value) updateCoverEvent,
    required TResult Function(EditProfileImage value) editProfileImage,
    required TResult Function(EditCoverImage value) editCoverImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesEventCopyWith<$Res> {
  factory $ImagesEventCopyWith(
          ImagesEvent value, $Res Function(ImagesEvent) then) =
      _$ImagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImagesEventCopyWithImpl<$Res> implements $ImagesEventCopyWith<$Res> {
  _$ImagesEventCopyWithImpl(this._value, this._then);

  final ImagesEvent _value;
  // ignore: unused_field
  final $Res Function(ImagesEvent) _then;
}

/// @nodoc
abstract class $UpdateStateCopyWith<$Res> {
  factory $UpdateStateCopyWith(
          UpdateState value, $Res Function(UpdateState) then) =
      _$UpdateStateCopyWithImpl<$Res>;
  $Res call({ImagesState state});

  $ImagesStateCopyWith<$Res> get state;
}

/// @nodoc
class _$UpdateStateCopyWithImpl<$Res> extends _$ImagesEventCopyWithImpl<$Res>
    implements $UpdateStateCopyWith<$Res> {
  _$UpdateStateCopyWithImpl(
      UpdateState _value, $Res Function(UpdateState) _then)
      : super(_value, (v) => _then(v as UpdateState));

  @override
  UpdateState get _value => super._value as UpdateState;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(UpdateState(
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ImagesState,
    ));
  }

  @override
  $ImagesStateCopyWith<$Res> get state {
    return $ImagesStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$UpdateState implements UpdateState {
  const _$UpdateState(this.state);

  @override
  final ImagesState state;

  @override
  String toString() {
    return 'ImagesEvent.updateState(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateState &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  $UpdateStateCopyWith<UpdateState> get copyWith =>
      _$UpdateStateCopyWithImpl<UpdateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImagesState state) updateState,
    required TResult Function() updateProfileEvent,
    required TResult Function() updateCoverEvent,
    required TResult Function(XFile? profileImage) editProfileImage,
    required TResult Function(XFile? coverImage) editCoverImage,
  }) {
    return updateState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
  }) {
    return updateState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateState value) updateState,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(UpdateCoverEvent value) updateCoverEvent,
    required TResult Function(EditProfileImage value) editProfileImage,
    required TResult Function(EditCoverImage value) editCoverImage,
  }) {
    return updateState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
  }) {
    return updateState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
    required TResult orElse(),
  }) {
    if (updateState != null) {
      return updateState(this);
    }
    return orElse();
  }
}

abstract class UpdateState implements ImagesEvent {
  const factory UpdateState(ImagesState state) = _$UpdateState;

  ImagesState get state;
  @JsonKey(ignore: true)
  $UpdateStateCopyWith<UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileEventCopyWith<$Res> {
  factory $UpdateProfileEventCopyWith(
          UpdateProfileEvent value, $Res Function(UpdateProfileEvent) then) =
      _$UpdateProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfileEventCopyWithImpl<$Res>
    extends _$ImagesEventCopyWithImpl<$Res>
    implements $UpdateProfileEventCopyWith<$Res> {
  _$UpdateProfileEventCopyWithImpl(
      UpdateProfileEvent _value, $Res Function(UpdateProfileEvent) _then)
      : super(_value, (v) => _then(v as UpdateProfileEvent));

  @override
  UpdateProfileEvent get _value => super._value as UpdateProfileEvent;
}

/// @nodoc

class _$UpdateProfileEvent implements UpdateProfileEvent {
  const _$UpdateProfileEvent();

  @override
  String toString() {
    return 'ImagesEvent.updateProfileEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImagesState state) updateState,
    required TResult Function() updateProfileEvent,
    required TResult Function() updateCoverEvent,
    required TResult Function(XFile? profileImage) editProfileImage,
    required TResult Function(XFile? coverImage) editCoverImage,
  }) {
    return updateProfileEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
  }) {
    return updateProfileEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
    required TResult orElse(),
  }) {
    if (updateProfileEvent != null) {
      return updateProfileEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateState value) updateState,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(UpdateCoverEvent value) updateCoverEvent,
    required TResult Function(EditProfileImage value) editProfileImage,
    required TResult Function(EditCoverImage value) editCoverImage,
  }) {
    return updateProfileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
  }) {
    return updateProfileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
    required TResult orElse(),
  }) {
    if (updateProfileEvent != null) {
      return updateProfileEvent(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileEvent implements ImagesEvent {
  const factory UpdateProfileEvent() = _$UpdateProfileEvent;
}

/// @nodoc
abstract class $UpdateCoverEventCopyWith<$Res> {
  factory $UpdateCoverEventCopyWith(
          UpdateCoverEvent value, $Res Function(UpdateCoverEvent) then) =
      _$UpdateCoverEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateCoverEventCopyWithImpl<$Res>
    extends _$ImagesEventCopyWithImpl<$Res>
    implements $UpdateCoverEventCopyWith<$Res> {
  _$UpdateCoverEventCopyWithImpl(
      UpdateCoverEvent _value, $Res Function(UpdateCoverEvent) _then)
      : super(_value, (v) => _then(v as UpdateCoverEvent));

  @override
  UpdateCoverEvent get _value => super._value as UpdateCoverEvent;
}

/// @nodoc

class _$UpdateCoverEvent implements UpdateCoverEvent {
  const _$UpdateCoverEvent();

  @override
  String toString() {
    return 'ImagesEvent.updateCoverEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateCoverEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImagesState state) updateState,
    required TResult Function() updateProfileEvent,
    required TResult Function() updateCoverEvent,
    required TResult Function(XFile? profileImage) editProfileImage,
    required TResult Function(XFile? coverImage) editCoverImage,
  }) {
    return updateCoverEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
  }) {
    return updateCoverEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
    required TResult orElse(),
  }) {
    if (updateCoverEvent != null) {
      return updateCoverEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateState value) updateState,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(UpdateCoverEvent value) updateCoverEvent,
    required TResult Function(EditProfileImage value) editProfileImage,
    required TResult Function(EditCoverImage value) editCoverImage,
  }) {
    return updateCoverEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
  }) {
    return updateCoverEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
    required TResult orElse(),
  }) {
    if (updateCoverEvent != null) {
      return updateCoverEvent(this);
    }
    return orElse();
  }
}

abstract class UpdateCoverEvent implements ImagesEvent {
  const factory UpdateCoverEvent() = _$UpdateCoverEvent;
}

/// @nodoc
abstract class $EditProfileImageCopyWith<$Res> {
  factory $EditProfileImageCopyWith(
          EditProfileImage value, $Res Function(EditProfileImage) then) =
      _$EditProfileImageCopyWithImpl<$Res>;
  $Res call({XFile? profileImage});
}

/// @nodoc
class _$EditProfileImageCopyWithImpl<$Res>
    extends _$ImagesEventCopyWithImpl<$Res>
    implements $EditProfileImageCopyWith<$Res> {
  _$EditProfileImageCopyWithImpl(
      EditProfileImage _value, $Res Function(EditProfileImage) _then)
      : super(_value, (v) => _then(v as EditProfileImage));

  @override
  EditProfileImage get _value => super._value as EditProfileImage;

  @override
  $Res call({
    Object? profileImage = freezed,
  }) {
    return _then(EditProfileImage(
      profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$EditProfileImage implements EditProfileImage {
  const _$EditProfileImage(this.profileImage);

  @override
  final XFile? profileImage;

  @override
  String toString() {
    return 'ImagesEvent.editProfileImage(profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProfileImage &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(profileImage));

  @JsonKey(ignore: true)
  @override
  $EditProfileImageCopyWith<EditProfileImage> get copyWith =>
      _$EditProfileImageCopyWithImpl<EditProfileImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImagesState state) updateState,
    required TResult Function() updateProfileEvent,
    required TResult Function() updateCoverEvent,
    required TResult Function(XFile? profileImage) editProfileImage,
    required TResult Function(XFile? coverImage) editCoverImage,
  }) {
    return editProfileImage(profileImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
  }) {
    return editProfileImage?.call(profileImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
    required TResult orElse(),
  }) {
    if (editProfileImage != null) {
      return editProfileImage(profileImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateState value) updateState,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(UpdateCoverEvent value) updateCoverEvent,
    required TResult Function(EditProfileImage value) editProfileImage,
    required TResult Function(EditCoverImage value) editCoverImage,
  }) {
    return editProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
  }) {
    return editProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
    required TResult orElse(),
  }) {
    if (editProfileImage != null) {
      return editProfileImage(this);
    }
    return orElse();
  }
}

abstract class EditProfileImage implements ImagesEvent {
  const factory EditProfileImage(XFile? profileImage) = _$EditProfileImage;

  XFile? get profileImage;
  @JsonKey(ignore: true)
  $EditProfileImageCopyWith<EditProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCoverImageCopyWith<$Res> {
  factory $EditCoverImageCopyWith(
          EditCoverImage value, $Res Function(EditCoverImage) then) =
      _$EditCoverImageCopyWithImpl<$Res>;
  $Res call({XFile? coverImage});
}

/// @nodoc
class _$EditCoverImageCopyWithImpl<$Res> extends _$ImagesEventCopyWithImpl<$Res>
    implements $EditCoverImageCopyWith<$Res> {
  _$EditCoverImageCopyWithImpl(
      EditCoverImage _value, $Res Function(EditCoverImage) _then)
      : super(_value, (v) => _then(v as EditCoverImage));

  @override
  EditCoverImage get _value => super._value as EditCoverImage;

  @override
  $Res call({
    Object? coverImage = freezed,
  }) {
    return _then(EditCoverImage(
      coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$EditCoverImage implements EditCoverImage {
  const _$EditCoverImage(this.coverImage);

  @override
  final XFile? coverImage;

  @override
  String toString() {
    return 'ImagesEvent.editCoverImage(coverImage: $coverImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditCoverImage &&
            const DeepCollectionEquality()
                .equals(other.coverImage, coverImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(coverImage));

  @JsonKey(ignore: true)
  @override
  $EditCoverImageCopyWith<EditCoverImage> get copyWith =>
      _$EditCoverImageCopyWithImpl<EditCoverImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImagesState state) updateState,
    required TResult Function() updateProfileEvent,
    required TResult Function() updateCoverEvent,
    required TResult Function(XFile? profileImage) editProfileImage,
    required TResult Function(XFile? coverImage) editCoverImage,
  }) {
    return editCoverImage(coverImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
  }) {
    return editCoverImage?.call(coverImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImagesState state)? updateState,
    TResult Function()? updateProfileEvent,
    TResult Function()? updateCoverEvent,
    TResult Function(XFile? profileImage)? editProfileImage,
    TResult Function(XFile? coverImage)? editCoverImage,
    required TResult orElse(),
  }) {
    if (editCoverImage != null) {
      return editCoverImage(coverImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateState value) updateState,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(UpdateCoverEvent value) updateCoverEvent,
    required TResult Function(EditProfileImage value) editProfileImage,
    required TResult Function(EditCoverImage value) editCoverImage,
  }) {
    return editCoverImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
  }) {
    return editCoverImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateState value)? updateState,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(UpdateCoverEvent value)? updateCoverEvent,
    TResult Function(EditProfileImage value)? editProfileImage,
    TResult Function(EditCoverImage value)? editCoverImage,
    required TResult orElse(),
  }) {
    if (editCoverImage != null) {
      return editCoverImage(this);
    }
    return orElse();
  }
}

abstract class EditCoverImage implements ImagesEvent {
  const factory EditCoverImage(XFile? coverImage) = _$EditCoverImage;

  XFile? get coverImage;
  @JsonKey(ignore: true)
  $EditCoverImageCopyWith<EditCoverImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ImagesStateTearOff {
  const _$ImagesStateTearOff();

  _ImagesState call(
      {required String profileImage,
      required String coverImage,
      required XFile? newProfileImage,
      required XFile? newCoverImage,
      required Option<Either<Failure, Unit>> updateCoverImageResponse,
      required Option<Either<Failure, String>> updateProfileImageResponse}) {
    return _ImagesState(
      profileImage: profileImage,
      coverImage: coverImage,
      newProfileImage: newProfileImage,
      newCoverImage: newCoverImage,
      updateCoverImageResponse: updateCoverImageResponse,
      updateProfileImageResponse: updateProfileImageResponse,
    );
  }
}

/// @nodoc
const $ImagesState = _$ImagesStateTearOff();

/// @nodoc
mixin _$ImagesState {
  String get profileImage => throw _privateConstructorUsedError;
  String get coverImage => throw _privateConstructorUsedError;
  XFile? get newProfileImage => throw _privateConstructorUsedError;
  XFile? get newCoverImage => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get updateCoverImageResponse =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, String>> get updateProfileImageResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImagesStateCopyWith<ImagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesStateCopyWith<$Res> {
  factory $ImagesStateCopyWith(
          ImagesState value, $Res Function(ImagesState) then) =
      _$ImagesStateCopyWithImpl<$Res>;
  $Res call(
      {String profileImage,
      String coverImage,
      XFile? newProfileImage,
      XFile? newCoverImage,
      Option<Either<Failure, Unit>> updateCoverImageResponse,
      Option<Either<Failure, String>> updateProfileImageResponse});
}

/// @nodoc
class _$ImagesStateCopyWithImpl<$Res> implements $ImagesStateCopyWith<$Res> {
  _$ImagesStateCopyWithImpl(this._value, this._then);

  final ImagesState _value;
  // ignore: unused_field
  final $Res Function(ImagesState) _then;

  @override
  $Res call({
    Object? profileImage = freezed,
    Object? coverImage = freezed,
    Object? newProfileImage = freezed,
    Object? newCoverImage = freezed,
    Object? updateCoverImageResponse = freezed,
    Object? updateProfileImageResponse = freezed,
  }) {
    return _then(_value.copyWith(
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      newProfileImage: newProfileImage == freezed
          ? _value.newProfileImage
          : newProfileImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      newCoverImage: newCoverImage == freezed
          ? _value.newCoverImage
          : newCoverImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      updateCoverImageResponse: updateCoverImageResponse == freezed
          ? _value.updateCoverImageResponse
          : updateCoverImageResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      updateProfileImageResponse: updateProfileImageResponse == freezed
          ? _value.updateProfileImageResponse
          : updateProfileImageResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ));
  }
}

/// @nodoc
abstract class _$ImagesStateCopyWith<$Res>
    implements $ImagesStateCopyWith<$Res> {
  factory _$ImagesStateCopyWith(
          _ImagesState value, $Res Function(_ImagesState) then) =
      __$ImagesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String profileImage,
      String coverImage,
      XFile? newProfileImage,
      XFile? newCoverImage,
      Option<Either<Failure, Unit>> updateCoverImageResponse,
      Option<Either<Failure, String>> updateProfileImageResponse});
}

/// @nodoc
class __$ImagesStateCopyWithImpl<$Res> extends _$ImagesStateCopyWithImpl<$Res>
    implements _$ImagesStateCopyWith<$Res> {
  __$ImagesStateCopyWithImpl(
      _ImagesState _value, $Res Function(_ImagesState) _then)
      : super(_value, (v) => _then(v as _ImagesState));

  @override
  _ImagesState get _value => super._value as _ImagesState;

  @override
  $Res call({
    Object? profileImage = freezed,
    Object? coverImage = freezed,
    Object? newProfileImage = freezed,
    Object? newCoverImage = freezed,
    Object? updateCoverImageResponse = freezed,
    Object? updateProfileImageResponse = freezed,
  }) {
    return _then(_ImagesState(
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      newProfileImage: newProfileImage == freezed
          ? _value.newProfileImage
          : newProfileImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      newCoverImage: newCoverImage == freezed
          ? _value.newCoverImage
          : newCoverImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      updateCoverImageResponse: updateCoverImageResponse == freezed
          ? _value.updateCoverImageResponse
          : updateCoverImageResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      updateProfileImageResponse: updateProfileImageResponse == freezed
          ? _value.updateProfileImageResponse
          : updateProfileImageResponse // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
    ));
  }
}

/// @nodoc

class _$_ImagesState implements _ImagesState {
  const _$_ImagesState(
      {required this.profileImage,
      required this.coverImage,
      required this.newProfileImage,
      required this.newCoverImage,
      required this.updateCoverImageResponse,
      required this.updateProfileImageResponse});

  @override
  final String profileImage;
  @override
  final String coverImage;
  @override
  final XFile? newProfileImage;
  @override
  final XFile? newCoverImage;
  @override
  final Option<Either<Failure, Unit>> updateCoverImageResponse;
  @override
  final Option<Either<Failure, String>> updateProfileImageResponse;

  @override
  String toString() {
    return 'ImagesState(profileImage: $profileImage, coverImage: $coverImage, newProfileImage: $newProfileImage, newCoverImage: $newCoverImage, updateCoverImageResponse: $updateCoverImageResponse, updateProfileImageResponse: $updateProfileImageResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImagesState &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality()
                .equals(other.coverImage, coverImage) &&
            const DeepCollectionEquality()
                .equals(other.newProfileImage, newProfileImage) &&
            const DeepCollectionEquality()
                .equals(other.newCoverImage, newCoverImage) &&
            const DeepCollectionEquality().equals(
                other.updateCoverImageResponse, updateCoverImageResponse) &&
            const DeepCollectionEquality().equals(
                other.updateProfileImageResponse, updateProfileImageResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(coverImage),
      const DeepCollectionEquality().hash(newProfileImage),
      const DeepCollectionEquality().hash(newCoverImage),
      const DeepCollectionEquality().hash(updateCoverImageResponse),
      const DeepCollectionEquality().hash(updateProfileImageResponse));

  @JsonKey(ignore: true)
  @override
  _$ImagesStateCopyWith<_ImagesState> get copyWith =>
      __$ImagesStateCopyWithImpl<_ImagesState>(this, _$identity);
}

abstract class _ImagesState implements ImagesState {
  const factory _ImagesState(
      {required String profileImage,
      required String coverImage,
      required XFile? newProfileImage,
      required XFile? newCoverImage,
      required Option<Either<Failure, Unit>> updateCoverImageResponse,
      required Option<Either<Failure, String>>
          updateProfileImageResponse}) = _$_ImagesState;

  @override
  String get profileImage;
  @override
  String get coverImage;
  @override
  XFile? get newProfileImage;
  @override
  XFile? get newCoverImage;
  @override
  Option<Either<Failure, Unit>> get updateCoverImageResponse;
  @override
  Option<Either<Failure, String>> get updateProfileImageResponse;
  @override
  @JsonKey(ignore: true)
  _$ImagesStateCopyWith<_ImagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
