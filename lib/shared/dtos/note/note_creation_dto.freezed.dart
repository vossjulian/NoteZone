// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_creation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteCreationDTO _$NoteCreationDTOFromJson(Map<String, dynamic> json) {
  return _NoteCreationDTO.fromJson(json);
}

/// @nodoc
mixin _$NoteCreationDTO {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get creatorUid => throw _privateConstructorUsedError;
  String get creatorFirstname => throw _privateConstructorUsedError;
  String get creatorLastname => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteCreationDTOCopyWith<NoteCreationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCreationDTOCopyWith<$Res> {
  factory $NoteCreationDTOCopyWith(
          NoteCreationDTO value, $Res Function(NoteCreationDTO) then) =
      _$NoteCreationDTOCopyWithImpl<$Res, NoteCreationDTO>;
  @useResult
  $Res call(
      {String title,
      String content,
      String creatorUid,
      String creatorFirstname,
      String creatorLastname,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class _$NoteCreationDTOCopyWithImpl<$Res, $Val extends NoteCreationDTO>
    implements $NoteCreationDTOCopyWith<$Res> {
  _$NoteCreationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? creatorUid = null,
    Object? creatorFirstname = null,
    Object? creatorLastname = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_NoteCreationDTOCopyWith<$Res>
    implements $NoteCreationDTOCopyWith<$Res> {
  factory _$$_NoteCreationDTOCopyWith(
          _$_NoteCreationDTO value, $Res Function(_$_NoteCreationDTO) then) =
      __$$_NoteCreationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      String creatorUid,
      String creatorFirstname,
      String creatorLastname,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class __$$_NoteCreationDTOCopyWithImpl<$Res>
    extends _$NoteCreationDTOCopyWithImpl<$Res, _$_NoteCreationDTO>
    implements _$$_NoteCreationDTOCopyWith<$Res> {
  __$$_NoteCreationDTOCopyWithImpl(
      _$_NoteCreationDTO _value, $Res Function(_$_NoteCreationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? creatorUid = null,
    Object? creatorFirstname = null,
    Object? creatorLastname = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_NoteCreationDTO(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$_NoteCreationDTO implements _NoteCreationDTO {
  const _$_NoteCreationDTO(
      {required this.title,
      required this.content,
      required this.creatorUid,
      required this.creatorFirstname,
      required this.creatorLastname,
      required this.createdAt,
      required this.modificatedAt});

  factory _$_NoteCreationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NoteCreationDTOFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final String creatorUid;
  @override
  final String creatorFirstname;
  @override
  final String creatorLastname;
  @override
  final DateTime createdAt;
  @override
  final DateTime modificatedAt;

  @override
  String toString() {
    return 'NoteCreationDTO(title: $title, content: $content, creatorUid: $creatorUid, creatorFirstname: $creatorFirstname, creatorLastname: $creatorLastname, createdAt: $createdAt, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteCreationDTO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.creatorUid, creatorUid) ||
                other.creatorUid == creatorUid) &&
            (identical(other.creatorFirstname, creatorFirstname) ||
                other.creatorFirstname == creatorFirstname) &&
            (identical(other.creatorLastname, creatorLastname) ||
                other.creatorLastname == creatorLastname) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, creatorUid,
      creatorFirstname, creatorLastname, createdAt, modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteCreationDTOCopyWith<_$_NoteCreationDTO> get copyWith =>
      __$$_NoteCreationDTOCopyWithImpl<_$_NoteCreationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteCreationDTOToJson(
      this,
    );
  }
}

abstract class _NoteCreationDTO implements NoteCreationDTO {
  const factory _NoteCreationDTO(
      {required final String title,
      required final String content,
      required final String creatorUid,
      required final String creatorFirstname,
      required final String creatorLastname,
      required final DateTime createdAt,
      required final DateTime modificatedAt}) = _$_NoteCreationDTO;

  factory _NoteCreationDTO.fromJson(Map<String, dynamic> json) =
      _$_NoteCreationDTO.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  String get creatorUid;
  @override
  String get creatorFirstname;
  @override
  String get creatorLastname;
  @override
  DateTime get createdAt;
  @override
  DateTime get modificatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_NoteCreationDTOCopyWith<_$_NoteCreationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
