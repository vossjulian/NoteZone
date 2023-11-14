// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_invite_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MemberInvitePageState {
  MemberInviteState get currentFragment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberInvitePageStateCopyWith<MemberInvitePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberInvitePageStateCopyWith<$Res> {
  factory $MemberInvitePageStateCopyWith(MemberInvitePageState value,
          $Res Function(MemberInvitePageState) then) =
      _$MemberInvitePageStateCopyWithImpl<$Res, MemberInvitePageState>;
  @useResult
  $Res call({MemberInviteState currentFragment});
}

/// @nodoc
class _$MemberInvitePageStateCopyWithImpl<$Res,
        $Val extends MemberInvitePageState>
    implements $MemberInvitePageStateCopyWith<$Res> {
  _$MemberInvitePageStateCopyWithImpl(this._value, this._then);

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
              as MemberInviteState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberInvitePageStateCopyWith<$Res>
    implements $MemberInvitePageStateCopyWith<$Res> {
  factory _$$_MemberInvitePageStateCopyWith(_$_MemberInvitePageState value,
          $Res Function(_$_MemberInvitePageState) then) =
      __$$_MemberInvitePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MemberInviteState currentFragment});
}

/// @nodoc
class __$$_MemberInvitePageStateCopyWithImpl<$Res>
    extends _$MemberInvitePageStateCopyWithImpl<$Res, _$_MemberInvitePageState>
    implements _$$_MemberInvitePageStateCopyWith<$Res> {
  __$$_MemberInvitePageStateCopyWithImpl(_$_MemberInvitePageState _value,
      $Res Function(_$_MemberInvitePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFragment = null,
  }) {
    return _then(_$_MemberInvitePageState(
      currentFragment: null == currentFragment
          ? _value.currentFragment
          : currentFragment // ignore: cast_nullable_to_non_nullable
              as MemberInviteState,
    ));
  }
}

/// @nodoc

class _$_MemberInvitePageState extends _MemberInvitePageState {
  const _$_MemberInvitePageState(
      {this.currentFragment = MemberInviteState.memberInvite})
      : super._();

  @override
  @JsonKey()
  final MemberInviteState currentFragment;

  @override
  String toString() {
    return 'MemberInvitePageState(currentFragment: $currentFragment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberInvitePageState &&
            (identical(other.currentFragment, currentFragment) ||
                other.currentFragment == currentFragment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentFragment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberInvitePageStateCopyWith<_$_MemberInvitePageState> get copyWith =>
      __$$_MemberInvitePageStateCopyWithImpl<_$_MemberInvitePageState>(
          this, _$identity);
}

abstract class _MemberInvitePageState extends MemberInvitePageState {
  const factory _MemberInvitePageState(
      {final MemberInviteState currentFragment}) = _$_MemberInvitePageState;
  const _MemberInvitePageState._() : super._();

  @override
  MemberInviteState get currentFragment;
  @override
  @JsonKey(ignore: true)
  _$$_MemberInvitePageStateCopyWith<_$_MemberInvitePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
