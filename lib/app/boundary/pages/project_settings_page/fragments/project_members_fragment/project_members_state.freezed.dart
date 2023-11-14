// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_members_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectMembersState {
  List<ProfileEntity> get members => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectMembersStateCopyWith<ProjectMembersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectMembersStateCopyWith<$Res> {
  factory $ProjectMembersStateCopyWith(
          ProjectMembersState value, $Res Function(ProjectMembersState) then) =
      _$ProjectMembersStateCopyWithImpl<$Res, ProjectMembersState>;
  @useResult
  $Res call({List<ProfileEntity> members, bool isLoading});
}

/// @nodoc
class _$ProjectMembersStateCopyWithImpl<$Res, $Val extends ProjectMembersState>
    implements $ProjectMembersStateCopyWith<$Res> {
  _$ProjectMembersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectMembersStateCopyWith<$Res>
    implements $ProjectMembersStateCopyWith<$Res> {
  factory _$$_ProjectMembersStateCopyWith(_$_ProjectMembersState value,
          $Res Function(_$_ProjectMembersState) then) =
      __$$_ProjectMembersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProfileEntity> members, bool isLoading});
}

/// @nodoc
class __$$_ProjectMembersStateCopyWithImpl<$Res>
    extends _$ProjectMembersStateCopyWithImpl<$Res, _$_ProjectMembersState>
    implements _$$_ProjectMembersStateCopyWith<$Res> {
  __$$_ProjectMembersStateCopyWithImpl(_$_ProjectMembersState _value,
      $Res Function(_$_ProjectMembersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
    Object? isLoading = null,
  }) {
    return _then(_$_ProjectMembersState(
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProjectMembersState implements _ProjectMembersState {
  _$_ProjectMembersState(
      {final List<ProfileEntity> members = const [], this.isLoading = false})
      : _members = members;

  final List<ProfileEntity> _members;
  @override
  @JsonKey()
  List<ProfileEntity> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ProjectMembersState(members: $members, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectMembersState &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_members), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectMembersStateCopyWith<_$_ProjectMembersState> get copyWith =>
      __$$_ProjectMembersStateCopyWithImpl<_$_ProjectMembersState>(
          this, _$identity);
}

abstract class _ProjectMembersState implements ProjectMembersState {
  factory _ProjectMembersState(
      {final List<ProfileEntity> members,
      final bool isLoading}) = _$_ProjectMembersState;

  @override
  List<ProfileEntity> get members;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectMembersStateCopyWith<_$_ProjectMembersState> get copyWith =>
      throw _privateConstructorUsedError;
}
