// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_modification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectModificationDTO _$ProjectModificationDTOFromJson(
    Map<String, dynamic> json) {
  return _ProjectModificationDTO.fromJson(json);
}

/// @nodoc
mixin _$ProjectModificationDTO {
  String get title => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectModificationDTOCopyWith<ProjectModificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectModificationDTOCopyWith<$Res> {
  factory $ProjectModificationDTOCopyWith(ProjectModificationDTO value,
          $Res Function(ProjectModificationDTO) then) =
      _$ProjectModificationDTOCopyWithImpl<$Res, ProjectModificationDTO>;
  @useResult
  $Res call({String title, DateTime modificatedAt});
}

/// @nodoc
class _$ProjectModificationDTOCopyWithImpl<$Res,
        $Val extends ProjectModificationDTO>
    implements $ProjectModificationDTOCopyWith<$Res> {
  _$ProjectModificationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? modificatedAt = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectModificationDTOCopyWith<$Res>
    implements $ProjectModificationDTOCopyWith<$Res> {
  factory _$$_ProjectModificationDTOCopyWith(_$_ProjectModificationDTO value,
          $Res Function(_$_ProjectModificationDTO) then) =
      __$$_ProjectModificationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime modificatedAt});
}

/// @nodoc
class __$$_ProjectModificationDTOCopyWithImpl<$Res>
    extends _$ProjectModificationDTOCopyWithImpl<$Res,
        _$_ProjectModificationDTO>
    implements _$$_ProjectModificationDTOCopyWith<$Res> {
  __$$_ProjectModificationDTOCopyWithImpl(_$_ProjectModificationDTO _value,
      $Res Function(_$_ProjectModificationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_ProjectModificationDTO(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$_ProjectModificationDTO implements _ProjectModificationDTO {
  const _$_ProjectModificationDTO(
      {required this.title, required this.modificatedAt});

  factory _$_ProjectModificationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectModificationDTOFromJson(json);

  @override
  final String title;
  @override
  final DateTime modificatedAt;

  @override
  String toString() {
    return 'ProjectModificationDTO(title: $title, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectModificationDTO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectModificationDTOCopyWith<_$_ProjectModificationDTO> get copyWith =>
      __$$_ProjectModificationDTOCopyWithImpl<_$_ProjectModificationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectModificationDTOToJson(
      this,
    );
  }
}

abstract class _ProjectModificationDTO implements ProjectModificationDTO {
  const factory _ProjectModificationDTO(
      {required final String title,
      required final DateTime modificatedAt}) = _$_ProjectModificationDTO;

  factory _ProjectModificationDTO.fromJson(Map<String, dynamic> json) =
      _$_ProjectModificationDTO.fromJson;

  @override
  String get title;
  @override
  DateTime get modificatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectModificationDTOCopyWith<_$_ProjectModificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
