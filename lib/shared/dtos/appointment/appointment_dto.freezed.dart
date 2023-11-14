// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentDTO _$AppointmentDTOFromJson(Map<String, dynamic> json) {
  return _AppointmentDTO.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDTO {
  String get title => throw _privateConstructorUsedError;
  String get creatorUid => throw _privateConstructorUsedError;
  String get creatorFirstname => throw _privateConstructorUsedError;
  String get creatorLastname => throw _privateConstructorUsedError;
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentDTOCopyWith<AppointmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDTOCopyWith<$Res> {
  factory $AppointmentDTOCopyWith(
          AppointmentDTO value, $Res Function(AppointmentDTO) then) =
      _$AppointmentDTOCopyWithImpl<$Res, AppointmentDTO>;
  @useResult
  $Res call(
      {String title,
      String creatorUid,
      String creatorFirstname,
      String creatorLastname,
      String start,
      String end,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class _$AppointmentDTOCopyWithImpl<$Res, $Val extends AppointmentDTO>
    implements $AppointmentDTOCopyWith<$Res> {
  _$AppointmentDTOCopyWithImpl(this._value, this._then);

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
    Object? start = null,
    Object? end = null,
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
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_AppointmentDTOCopyWith<$Res>
    implements $AppointmentDTOCopyWith<$Res> {
  factory _$$_AppointmentDTOCopyWith(
          _$_AppointmentDTO value, $Res Function(_$_AppointmentDTO) then) =
      __$$_AppointmentDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String creatorUid,
      String creatorFirstname,
      String creatorLastname,
      String start,
      String end,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class __$$_AppointmentDTOCopyWithImpl<$Res>
    extends _$AppointmentDTOCopyWithImpl<$Res, _$_AppointmentDTO>
    implements _$$_AppointmentDTOCopyWith<$Res> {
  __$$_AppointmentDTOCopyWithImpl(
      _$_AppointmentDTO _value, $Res Function(_$_AppointmentDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? creatorUid = null,
    Object? creatorFirstname = null,
    Object? creatorLastname = null,
    Object? start = null,
    Object? end = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_AppointmentDTO(
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
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
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
class _$_AppointmentDTO implements _AppointmentDTO {
  const _$_AppointmentDTO(
      {required this.title,
      required this.creatorUid,
      required this.creatorFirstname,
      required this.creatorLastname,
      required this.start,
      required this.end,
      required this.createdAt,
      required this.modificatedAt});

  factory _$_AppointmentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentDTOFromJson(json);

  @override
  final String title;
  @override
  final String creatorUid;
  @override
  final String creatorFirstname;
  @override
  final String creatorLastname;
  @override
  final String start;
  @override
  final String end;
  @override
  final DateTime createdAt;
  @override
  final DateTime modificatedAt;

  @override
  String toString() {
    return 'AppointmentDTO(title: $title, creatorUid: $creatorUid, creatorFirstname: $creatorFirstname, creatorLastname: $creatorLastname, start: $start, end: $end, createdAt: $createdAt, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentDTO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.creatorUid, creatorUid) ||
                other.creatorUid == creatorUid) &&
            (identical(other.creatorFirstname, creatorFirstname) ||
                other.creatorFirstname == creatorFirstname) &&
            (identical(other.creatorLastname, creatorLastname) ||
                other.creatorLastname == creatorLastname) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, creatorUid,
      creatorFirstname, creatorLastname, start, end, createdAt, modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentDTOCopyWith<_$_AppointmentDTO> get copyWith =>
      __$$_AppointmentDTOCopyWithImpl<_$_AppointmentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentDTOToJson(
      this,
    );
  }
}

abstract class _AppointmentDTO implements AppointmentDTO {
  const factory _AppointmentDTO(
      {required final String title,
      required final String creatorUid,
      required final String creatorFirstname,
      required final String creatorLastname,
      required final String start,
      required final String end,
      required final DateTime createdAt,
      required final DateTime modificatedAt}) = _$_AppointmentDTO;

  factory _AppointmentDTO.fromJson(Map<String, dynamic> json) =
      _$_AppointmentDTO.fromJson;

  @override
  String get title;
  @override
  String get creatorUid;
  @override
  String get creatorFirstname;
  @override
  String get creatorLastname;
  @override
  String get start;
  @override
  String get end;
  @override
  DateTime get createdAt;
  @override
  DateTime get modificatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentDTOCopyWith<_$_AppointmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
