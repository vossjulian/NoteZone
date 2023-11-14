// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfilePageState {
  ProfileState get currentFragment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfilePageStateCopyWith<ProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePageStateCopyWith<$Res> {
  factory $ProfilePageStateCopyWith(
          ProfilePageState value, $Res Function(ProfilePageState) then) =
      _$ProfilePageStateCopyWithImpl<$Res, ProfilePageState>;
  @useResult
  $Res call({ProfileState currentFragment});
}

/// @nodoc
class _$ProfilePageStateCopyWithImpl<$Res, $Val extends ProfilePageState>
    implements $ProfilePageStateCopyWith<$Res> {
  _$ProfilePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFragment = null,
  }) {
    return _then(_value.copyWith(
      currentFragment: null == currentFragment
          ? _value.currentFragment
          : currentFragment // ignore: cast_nullable_to_non_nullable
              as ProfileState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfilePageStateCopyWith<$Res>
    implements $ProfilePageStateCopyWith<$Res> {
  factory _$$_ProfilePageStateCopyWith(
          _$_ProfilePageState value, $Res Function(_$_ProfilePageState) then) =
      __$$_ProfilePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileState currentFragment});
}

/// @nodoc
class __$$_ProfilePageStateCopyWithImpl<$Res>
    extends _$ProfilePageStateCopyWithImpl<$Res, _$_ProfilePageState>
    implements _$$_ProfilePageStateCopyWith<$Res> {
  __$$_ProfilePageStateCopyWithImpl(
      _$_ProfilePageState _value, $Res Function(_$_ProfilePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFragment = null,
  }) {
    return _then(_$_ProfilePageState(
      currentFragment: null == currentFragment
          ? _value.currentFragment
          : currentFragment // ignore: cast_nullable_to_non_nullable
              as ProfileState,
    ));
  }
}

/// @nodoc

class _$_ProfilePageState extends _ProfilePageState {
  const _$_ProfilePageState({this.currentFragment = ProfileState.profile})
      : super._();

  @override
  @JsonKey()
  final ProfileState currentFragment;

  @override
  String toString() {
    return 'ProfilePageState(currentFragment: $currentFragment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePageState &&
            (identical(other.currentFragment, currentFragment) ||
                other.currentFragment == currentFragment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentFragment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfilePageStateCopyWith<_$_ProfilePageState> get copyWith =>
      __$$_ProfilePageStateCopyWithImpl<_$_ProfilePageState>(this, _$identity);
}

abstract class _ProfilePageState extends ProfilePageState {
  const factory _ProfilePageState({final ProfileState currentFragment}) =
      _$_ProfilePageState;
  const _ProfilePageState._() : super._();

  @override
  ProfileState get currentFragment;
  @override
  @JsonKey(ignore: true)
  _$$_ProfilePageStateCopyWith<_$_ProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
