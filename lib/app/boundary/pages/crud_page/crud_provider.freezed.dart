// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crud_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CRUDPageState {
  CRUDState get currentFragment => throw _privateConstructorUsedError;
  SubmitMode get mode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CRUDPageStateCopyWith<CRUDPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CRUDPageStateCopyWith<$Res> {
  factory $CRUDPageStateCopyWith(
          CRUDPageState value, $Res Function(CRUDPageState) then) =
      _$CRUDPageStateCopyWithImpl<$Res, CRUDPageState>;
  @useResult
  $Res call({CRUDState currentFragment, SubmitMode mode});
}

/// @nodoc
class _$CRUDPageStateCopyWithImpl<$Res, $Val extends CRUDPageState>
    implements $CRUDPageStateCopyWith<$Res> {
  _$CRUDPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFragment = null,
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      currentFragment: null == currentFragment
          ? _value.currentFragment
          : currentFragment // ignore: cast_nullable_to_non_nullable
              as CRUDState,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SubmitMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CRUDPageStateCopyWith<$Res>
    implements $CRUDPageStateCopyWith<$Res> {
  factory _$$_CRUDPageStateCopyWith(
          _$_CRUDPageState value, $Res Function(_$_CRUDPageState) then) =
      __$$_CRUDPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CRUDState currentFragment, SubmitMode mode});
}

/// @nodoc
class __$$_CRUDPageStateCopyWithImpl<$Res>
    extends _$CRUDPageStateCopyWithImpl<$Res, _$_CRUDPageState>
    implements _$$_CRUDPageStateCopyWith<$Res> {
  __$$_CRUDPageStateCopyWithImpl(
      _$_CRUDPageState _value, $Res Function(_$_CRUDPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFragment = null,
    Object? mode = null,
  }) {
    return _then(_$_CRUDPageState(
      currentFragment: null == currentFragment
          ? _value.currentFragment
          : currentFragment // ignore: cast_nullable_to_non_nullable
              as CRUDState,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SubmitMode,
    ));
  }
}

/// @nodoc

class _$_CRUDPageState extends _CRUDPageState {
  const _$_CRUDPageState(
      {this.currentFragment = CRUDState.todo, this.mode = SubmitMode.create})
      : super._();

  @override
  @JsonKey()
  final CRUDState currentFragment;
  @override
  @JsonKey()
  final SubmitMode mode;

  @override
  String toString() {
    return 'CRUDPageState(currentFragment: $currentFragment, mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CRUDPageState &&
            (identical(other.currentFragment, currentFragment) ||
                other.currentFragment == currentFragment) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentFragment, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CRUDPageStateCopyWith<_$_CRUDPageState> get copyWith =>
      __$$_CRUDPageStateCopyWithImpl<_$_CRUDPageState>(this, _$identity);
}

abstract class _CRUDPageState extends CRUDPageState {
  const factory _CRUDPageState(
      {final CRUDState currentFragment,
      final SubmitMode mode}) = _$_CRUDPageState;
  const _CRUDPageState._() : super._();

  @override
  CRUDState get currentFragment;
  @override
  SubmitMode get mode;
  @override
  @JsonKey(ignore: true)
  _$$_CRUDPageStateCopyWith<_$_CRUDPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
