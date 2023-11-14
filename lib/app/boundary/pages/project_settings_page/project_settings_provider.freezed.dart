// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_settings_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectSettingsPageState {
  ProjectSettingsState get currentFragment =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectSettingsPageStateCopyWith<ProjectSettingsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSettingsPageStateCopyWith<$Res> {
  factory $ProjectSettingsPageStateCopyWith(ProjectSettingsPageState value,
          $Res Function(ProjectSettingsPageState) then) =
      _$ProjectSettingsPageStateCopyWithImpl<$Res, ProjectSettingsPageState>;
  @useResult
  $Res call({ProjectSettingsState currentFragment});
}

/// @nodoc
class _$ProjectSettingsPageStateCopyWithImpl<$Res,
        $Val extends ProjectSettingsPageState>
    implements $ProjectSettingsPageStateCopyWith<$Res> {
  _$ProjectSettingsPageStateCopyWithImpl(this._value, this._then);

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
              as ProjectSettingsState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectSettingsPageStateCopyWith<$Res>
    implements $ProjectSettingsPageStateCopyWith<$Res> {
  factory _$$_ProjectSettingsPageStateCopyWith(
          _$_ProjectSettingsPageState value,
          $Res Function(_$_ProjectSettingsPageState) then) =
      __$$_ProjectSettingsPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectSettingsState currentFragment});
}

/// @nodoc
class __$$_ProjectSettingsPageStateCopyWithImpl<$Res>
    extends _$ProjectSettingsPageStateCopyWithImpl<$Res,
        _$_ProjectSettingsPageState>
    implements _$$_ProjectSettingsPageStateCopyWith<$Res> {
  __$$_ProjectSettingsPageStateCopyWithImpl(_$_ProjectSettingsPageState _value,
      $Res Function(_$_ProjectSettingsPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFragment = null,
  }) {
    return _then(_$_ProjectSettingsPageState(
      currentFragment: null == currentFragment
          ? _value.currentFragment
          : currentFragment // ignore: cast_nullable_to_non_nullable
              as ProjectSettingsState,
    ));
  }
}

/// @nodoc

class _$_ProjectSettingsPageState extends _ProjectSettingsPageState {
  const _$_ProjectSettingsPageState(
      {this.currentFragment = ProjectSettingsState.settings})
      : super._();

  @override
  @JsonKey()
  final ProjectSettingsState currentFragment;

  @override
  String toString() {
    return 'ProjectSettingsPageState(currentFragment: $currentFragment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectSettingsPageState &&
            (identical(other.currentFragment, currentFragment) ||
                other.currentFragment == currentFragment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentFragment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectSettingsPageStateCopyWith<_$_ProjectSettingsPageState>
      get copyWith => __$$_ProjectSettingsPageStateCopyWithImpl<
          _$_ProjectSettingsPageState>(this, _$identity);
}

abstract class _ProjectSettingsPageState extends ProjectSettingsPageState {
  const factory _ProjectSettingsPageState(
          {final ProjectSettingsState currentFragment}) =
      _$_ProjectSettingsPageState;
  const _ProjectSettingsPageState._() : super._();

  @override
  ProjectSettingsState get currentFragment;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectSettingsPageStateCopyWith<_$_ProjectSettingsPageState>
      get copyWith => throw _privateConstructorUsedError;
}
