// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_modification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteModificationDTO _$NoteModificationDTOFromJson(Map<String, dynamic> json) {
  return _NoteModificationDTO.fromJson(json);
}

/// @nodoc
mixin _$NoteModificationDTO {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteModificationDTOCopyWith<NoteModificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteModificationDTOCopyWith<$Res> {
  factory $NoteModificationDTOCopyWith(
          NoteModificationDTO value, $Res Function(NoteModificationDTO) then) =
      _$NoteModificationDTOCopyWithImpl<$Res, NoteModificationDTO>;
  @useResult
  $Res call({String title, String content, DateTime modificatedAt});
}

/// @nodoc
class _$NoteModificationDTOCopyWithImpl<$Res, $Val extends NoteModificationDTO>
    implements $NoteModificationDTOCopyWith<$Res> {
  _$NoteModificationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
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
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteModificationDTOCopyWith<$Res>
    implements $NoteModificationDTOCopyWith<$Res> {
  factory _$$_NoteModificationDTOCopyWith(_$_NoteModificationDTO value,
          $Res Function(_$_NoteModificationDTO) then) =
      __$$_NoteModificationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content, DateTime modificatedAt});
}

/// @nodoc
class __$$_NoteModificationDTOCopyWithImpl<$Res>
    extends _$NoteModificationDTOCopyWithImpl<$Res, _$_NoteModificationDTO>
    implements _$$_NoteModificationDTOCopyWith<$Res> {
  __$$_NoteModificationDTOCopyWithImpl(_$_NoteModificationDTO _value,
      $Res Function(_$_NoteModificationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_NoteModificationDTO(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteModificationDTO implements _NoteModificationDTO {
  const _$_NoteModificationDTO(
      {required this.title,
      required this.content,
      required this.modificatedAt});

  factory _$_NoteModificationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NoteModificationDTOFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final DateTime modificatedAt;

  @override
  String toString() {
    return 'NoteModificationDTO(title: $title, content: $content, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteModificationDTO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteModificationDTOCopyWith<_$_NoteModificationDTO> get copyWith =>
      __$$_NoteModificationDTOCopyWithImpl<_$_NoteModificationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteModificationDTOToJson(
      this,
    );
  }
}

abstract class _NoteModificationDTO implements NoteModificationDTO {
  const factory _NoteModificationDTO(
      {required final String title,
      required final String content,
      required final DateTime modificatedAt}) = _$_NoteModificationDTO;

  factory _NoteModificationDTO.fromJson(Map<String, dynamic> json) =
      _$_NoteModificationDTO.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  DateTime get modificatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_NoteModificationDTOCopyWith<_$_NoteModificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
