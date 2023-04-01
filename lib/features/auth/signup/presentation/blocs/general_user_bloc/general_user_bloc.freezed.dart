// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'general_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeneralUserStateTearOff {
  const _$GeneralUserStateTearOff();

  _GeneralUserState call(
      {required bool individualIsSelected,
      required bool organizationIsSelected,
      required bool ifIndividualSelect,
      required bool acceptedTermsAndConditions,
      required bool componentIsValid}) {
    return _GeneralUserState(
      individualIsSelected: individualIsSelected,
      organizationIsSelected: organizationIsSelected,
      ifIndividualSelect: ifIndividualSelect,
      acceptedTermsAndConditions: acceptedTermsAndConditions,
      componentIsValid: componentIsValid,
    );
  }
}

/// @nodoc
const $GeneralUserState = _$GeneralUserStateTearOff();

/// @nodoc
mixin _$GeneralUserState {
  bool get individualIsSelected => throw _privateConstructorUsedError;
  bool get organizationIsSelected => throw _privateConstructorUsedError;
  bool get ifIndividualSelect => throw _privateConstructorUsedError;
  bool get acceptedTermsAndConditions => throw _privateConstructorUsedError;
  bool get componentIsValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeneralUserStateCopyWith<GeneralUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralUserStateCopyWith<$Res> {
  factory $GeneralUserStateCopyWith(
          GeneralUserState value, $Res Function(GeneralUserState) then) =
      _$GeneralUserStateCopyWithImpl<$Res>;
  $Res call(
      {bool individualIsSelected,
      bool organizationIsSelected,
      bool ifIndividualSelect,
      bool acceptedTermsAndConditions,
      bool componentIsValid});
}

/// @nodoc
class _$GeneralUserStateCopyWithImpl<$Res>
    implements $GeneralUserStateCopyWith<$Res> {
  _$GeneralUserStateCopyWithImpl(this._value, this._then);

  final GeneralUserState _value;
  // ignore: unused_field
  final $Res Function(GeneralUserState) _then;

  @override
  $Res call({
    Object? individualIsSelected = freezed,
    Object? organizationIsSelected = freezed,
    Object? ifIndividualSelect = freezed,
    Object? acceptedTermsAndConditions = freezed,
    Object? componentIsValid = freezed,
  }) {
    return _then(_value.copyWith(
      individualIsSelected: individualIsSelected == freezed
          ? _value.individualIsSelected
          : individualIsSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      organizationIsSelected: organizationIsSelected == freezed
          ? _value.organizationIsSelected
          : organizationIsSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      ifIndividualSelect: ifIndividualSelect == freezed
          ? _value.ifIndividualSelect
          : ifIndividualSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptedTermsAndConditions: acceptedTermsAndConditions == freezed
          ? _value.acceptedTermsAndConditions
          : acceptedTermsAndConditions // ignore: cast_nullable_to_non_nullable
              as bool,
      componentIsValid: componentIsValid == freezed
          ? _value.componentIsValid
          : componentIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GeneralUserStateCopyWith<$Res>
    implements $GeneralUserStateCopyWith<$Res> {
  factory _$GeneralUserStateCopyWith(
          _GeneralUserState value, $Res Function(_GeneralUserState) then) =
      __$GeneralUserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool individualIsSelected,
      bool organizationIsSelected,
      bool ifIndividualSelect,
      bool acceptedTermsAndConditions,
      bool componentIsValid});
}

/// @nodoc
class __$GeneralUserStateCopyWithImpl<$Res>
    extends _$GeneralUserStateCopyWithImpl<$Res>
    implements _$GeneralUserStateCopyWith<$Res> {
  __$GeneralUserStateCopyWithImpl(
      _GeneralUserState _value, $Res Function(_GeneralUserState) _then)
      : super(_value, (v) => _then(v as _GeneralUserState));

  @override
  _GeneralUserState get _value => super._value as _GeneralUserState;

  @override
  $Res call({
    Object? individualIsSelected = freezed,
    Object? organizationIsSelected = freezed,
    Object? ifIndividualSelect = freezed,
    Object? acceptedTermsAndConditions = freezed,
    Object? componentIsValid = freezed,
  }) {
    return _then(_GeneralUserState(
      individualIsSelected: individualIsSelected == freezed
          ? _value.individualIsSelected
          : individualIsSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      organizationIsSelected: organizationIsSelected == freezed
          ? _value.organizationIsSelected
          : organizationIsSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      ifIndividualSelect: ifIndividualSelect == freezed
          ? _value.ifIndividualSelect
          : ifIndividualSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptedTermsAndConditions: acceptedTermsAndConditions == freezed
          ? _value.acceptedTermsAndConditions
          : acceptedTermsAndConditions // ignore: cast_nullable_to_non_nullable
              as bool,
      componentIsValid: componentIsValid == freezed
          ? _value.componentIsValid
          : componentIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GeneralUserState implements _GeneralUserState {
  const _$_GeneralUserState(
      {required this.individualIsSelected,
      required this.organizationIsSelected,
      required this.ifIndividualSelect,
      required this.acceptedTermsAndConditions,
      required this.componentIsValid});

  @override
  final bool individualIsSelected;
  @override
  final bool organizationIsSelected;
  @override
  final bool ifIndividualSelect;
  @override
  final bool acceptedTermsAndConditions;
  @override
  final bool componentIsValid;

  @override
  String toString() {
    return 'GeneralUserState(individualIsSelected: $individualIsSelected, organizationIsSelected: $organizationIsSelected, ifIndividualSelect: $ifIndividualSelect, acceptedTermsAndConditions: $acceptedTermsAndConditions, componentIsValid: $componentIsValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeneralUserState &&
            const DeepCollectionEquality()
                .equals(other.individualIsSelected, individualIsSelected) &&
            const DeepCollectionEquality()
                .equals(other.organizationIsSelected, organizationIsSelected) &&
            const DeepCollectionEquality()
                .equals(other.ifIndividualSelect, ifIndividualSelect) &&
            const DeepCollectionEquality().equals(
                other.acceptedTermsAndConditions, acceptedTermsAndConditions) &&
            const DeepCollectionEquality()
                .equals(other.componentIsValid, componentIsValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(individualIsSelected),
      const DeepCollectionEquality().hash(organizationIsSelected),
      const DeepCollectionEquality().hash(ifIndividualSelect),
      const DeepCollectionEquality().hash(acceptedTermsAndConditions),
      const DeepCollectionEquality().hash(componentIsValid));

  @JsonKey(ignore: true)
  @override
  _$GeneralUserStateCopyWith<_GeneralUserState> get copyWith =>
      __$GeneralUserStateCopyWithImpl<_GeneralUserState>(this, _$identity);
}

abstract class _GeneralUserState implements GeneralUserState {
  const factory _GeneralUserState(
      {required bool individualIsSelected,
      required bool organizationIsSelected,
      required bool ifIndividualSelect,
      required bool acceptedTermsAndConditions,
      required bool componentIsValid}) = _$_GeneralUserState;

  @override
  bool get individualIsSelected;
  @override
  bool get organizationIsSelected;
  @override
  bool get ifIndividualSelect;
  @override
  bool get acceptedTermsAndConditions;
  @override
  bool get componentIsValid;
  @override
  @JsonKey(ignore: true)
  _$GeneralUserStateCopyWith<_GeneralUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
