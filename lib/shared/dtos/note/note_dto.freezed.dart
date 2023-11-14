// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteDTO _$NoteDTOFromJson(Map<String, dynamic> json) {
  return _NoteDTO.fromJson(json);
}

/// @nodoc
mixin _$NoteDTO {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get creatorUid => throw _privateConstructorUsedError;
  String get creatorFirstname => throw _privateConstructorUsedError;
  String get creatorLastname => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDTOCopyWith<NoteDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDTOCopyWith<$Res> {
  factory $NoteDTOCopyWith(NoteDTO value, $Res Function(NoteDTO) then) =
      _$NoteDTOCopyWithImpl<$Res, NoteDTO>;
  @useResult
  $Res call(
      {String title,
      String content,
      String creatorUid,
      String creatorFirstname,
      String creatorLastname,
      DateTime modificatedAt,
      DateTime createdAt});
}

/// @nodoc
class _$NoteDTOCopyWithImpl<$Res, $Val extends NoteDTO>
    implements $NoteDTOCopyWith<$Res> {
  _$NoteDTOCopyWithImpl(this._value, this._then);

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
    Object? modificatedAt = null,
    Object? createdAt = null,
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
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteDTOCopyWith<$Res> implements $NoteDTOCopyWith<$Res> {
  factory _$$_NoteDTOCopyWith(
          _$_NoteDTO value, $Res Function(_$_NoteDTO) then) =
      __$$_NoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      String creatorUid,
      String creatorFirstname,
      String creatorLastname,
      DateTime modificatedAt,
      DateTime createdAt});
}

/// @nodoc
class __$$_NoteDTOCopyWithImpl<$Res>
    extends _$NoteDTOCopyWithImpl<$Res, _$_NoteDTO>
    implements _$$_NoteDTOCopyWith<$Res> {
  __$$_NoteDTOCopyWithImpl(_$_NoteDTO _value, $Res Function(_$_NoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? creatorUid = null,
    Object? creatorFirstname = null,
    Object? creatorLastname = null,
    Object? modificatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$_NoteDTO(
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
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteDTO implements _NoteDTO {
  const _$_NoteDTO(
      {required this.title,
      required this.content,
      required this.creatorUid,
      required this.creatorFirstname,
      required this.creatorLastname,
      required this.modificatedAt,
      required this.createdAt});

  factory _$_NoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NoteDTOFromJson(json);

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
  final DateTime modificatedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'NoteDTO(title: $title, content: $content, creatorUid: $creatorUid, creatorFirstname: $creatorFirstname, creatorLastname: $creatorLastname, modificatedAt: $modificatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteDTO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.creatorUid, creatorUid) ||
                other.creatorUid == creatorUid) &&
            (identical(other.creatorFirstname, creatorFirstname) ||
                other.creatorFirstname == creatorFirstname) &&
            (identical(other.creatorLastname, creatorLastname) ||
                other.creatorLastname == creatorLastname) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, creatorUid,
      creatorFirstname, creatorLastname, modificatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteDTOCopyWith<_$_NoteDTO> get copyWith =>
      __$$_NoteDTOCopyWithImpl<_$_NoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteDTOToJson(
      this,
    );
  }
}

abstract class _NoteDTO implements NoteDTO {
  const factory _NoteDTO(
      {required final String title,
      required final String content,
      required final String creatorUid,
      required final String creatorFirstname,
      required final String creatorLastname,
      required final DateTime modificatedAt,
      required final DateTime createdAt}) = _$_NoteDTO;

  factory _NoteDTO.fromJson(Map<String, dynamic> json) = _$_NoteDTO.fromJson;

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
  DateTime get modificatedAt;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_NoteDTOCopyWith<_$_NoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
