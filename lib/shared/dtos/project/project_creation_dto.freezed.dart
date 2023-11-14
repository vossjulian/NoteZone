// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_creation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectCreationDTO _$ProjectCreationDTOFromJson(Map<String, dynamic> json) {
  return _ProjectCreationDTO.fromJson(json);
}

/// @nodoc
mixin _$ProjectCreationDTO {
  String get title => throw _privateConstructorUsedError;
  String get creatorUid => throw _privateConstructorUsedError;
  String get creatorFirstname => throw _privateConstructorUsedError;
  String get creatorLastname => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCreationDTOCopyWith<ProjectCreationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCreationDTOCopyWith<$Res> {
  factory $ProjectCreationDTOCopyWith(
          ProjectCreationDTO value, $Res Function(ProjectCreationDTO) then) =
      _$ProjectCreationDTOCopyWithImpl<$Res, ProjectCreationDTO>;
  @useResult
  $Res call(
      {String title,
      String creatorUid,
      String creatorFirstname,
      String creatorLastname,
      List<String> members,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class _$ProjectCreationDTOCopyWithImpl<$Res, $Val extends ProjectCreationDTO>
    implements $ProjectCreationDTOCopyWith<$Res> {
  _$ProjectCreationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? creatorUid = null,
    Object? creatorFirstname = null,
    Object? creatorLastname = null,
    Object? members = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      creatorUid: null == creatorUid
          ? _value.creatorUid
          : creatorUid // ignore: cast_nullable_to_non_nullable
              as String,
      creatorFirstname: null == creatorFirstname
          ? _value.creatorFirstname
          : creatorFirstname // ignore: cast_nullable_to_non_nullable
              as String,
      creatorLastname: null == creatorLastname
          ? _value.creatorLastname
          : creatorLastname // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectCreationDTOCopyWith<$Res>
    implements $ProjectCreationDTOCopyWith<$Res> {
  factory _$$_ProjectCreationDTOCopyWith(_$_ProjectCreationDTO value,
          $Res Function(_$_ProjectCreationDTO) then) =
      __$$_ProjectCreationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String creatorUid,
      String creatorFirstname,
      String creatorLastname,
      List<String> members,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class __$$_ProjectCreationDTOCopyWithImpl<$Res>
    extends _$ProjectCreationDTOCopyWithImpl<$Res, _$_ProjectCreationDTO>
    implements _$$_ProjectCreationDTOCopyWith<$Res> {
  __$$_ProjectCreationDTOCopyWithImpl(
      _$_ProjectCreationDTO _value, $Res Function(_$_ProjectCreationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? creatorUid = null,
    Object? creatorFirstname = null,
    Object? creatorLastname = null,
    Object? members = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_ProjectCreationDTO(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      creatorUid: null == creatorUid
          ? _value.creatorUid
          : creatorUid // ignore: cast_nullable_to_non_nullable
              as String,
      creatorFirstname: null == creatorFirstname
          ? _value.creatorFirstname
          : creatorFirstname // ignore: cast_nullable_to_non_nullable
              as String,
      creatorLastname: null == creatorLastname
          ? _value.creatorLastname
          : creatorLastname // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectCreationDTO implements _ProjectCreationDTO {
  const _$_ProjectCreationDTO(
      {required this.title,
      required this.creatorUid,
      required this.creatorFirstname,
      required this.creatorLastname,
      required final List<String> members,
      required this.createdAt,
      required this.modificatedAt})
      : _members = members;

  factory _$_ProjectCreationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectCreationDTOFromJson(json);

  @override
  final String title;
  @override
  final String creatorUid;
  @override
  final String creatorFirstname;
  @override
  final String creatorLastname;
  final List<String> _members;
  @override
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime modificatedAt;

  @override
  String toString() {
    return 'ProjectCreationDTO(title: $title, creatorUid: $creatorUid, creatorFirstname: $creatorFirstname, creatorLastname: $creatorLastname, members: $members, createdAt: $createdAt, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectCreationDTO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.creatorUid, creatorUid) ||
                other.creatorUid == creatorUid) &&
            (identical(other.creatorFirstname, creatorFirstname) ||
                other.creatorFirstname == creatorFirstname) &&
            (identical(other.creatorLastname, creatorLastname) ||
                other.creatorLastname == creatorLastname) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      creatorUid,
      creatorFirstname,
      creatorLastname,
      const DeepCollectionEquality().hash(_members),
      createdAt,
      modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCreationDTOCopyWith<_$_ProjectCreationDTO> get copyWith =>
      __$$_ProjectCreationDTOCopyWithImpl<_$_ProjectCreationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectCreationDTOToJson(
      this,
    );
  }
}

abstract class _ProjectCreationDTO implements ProjectCreationDTO {
  const factory _ProjectCreationDTO(
      {required final String title,
      required final String creatorUid,
      required final String creatorFirstname,
      required final String creatorLastname,
      required final List<String> members,
      required final DateTime createdAt,
      required final DateTime modificatedAt}) = _$_ProjectCreationDTO;

  factory _ProjectCreationDTO.fromJson(Map<String, dynamic> json) =
      _$_ProjectCreationDTO.fromJson;

  @override
  String get title;
  @override
  String get creatorUid;
  @override
  String get creatorFirstname;
  @override
  String get creatorLastname;
  @override
  List<String> get members;
  @override
  DateTime get createdAt;
  @override
  DateTime get modificatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCreationDTOCopyWith<_$_ProjectCreationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
