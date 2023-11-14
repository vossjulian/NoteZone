// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvitationDTO _$InvitationDTOFromJson(Map<String, dynamic> json) {
  return _InvitationDTO.fromJson(json);
}

/// @nodoc
mixin _$InvitationDTO {
  String get projectTitle => throw _privateConstructorUsedError;
  String get projectUid => throw _privateConstructorUsedError;
  String get receiverUid => throw _privateConstructorUsedError;
  String get receiverEmail => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationDTOCopyWith<InvitationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationDTOCopyWith<$Res> {
  factory $InvitationDTOCopyWith(
          InvitationDTO value, $Res Function(InvitationDTO) then) =
      _$InvitationDTOCopyWithImpl<$Res, InvitationDTO>;
  @useResult
  $Res call(
      {String projectTitle,
      String projectUid,
      String receiverUid,
      String receiverEmail,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class _$InvitationDTOCopyWithImpl<$Res, $Val extends InvitationDTO>
    implements $InvitationDTOCopyWith<$Res> {
  _$InvitationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectTitle = null,
    Object? projectUid = null,
    Object? receiverUid = null,
    Object? receiverEmail = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_value.copyWith(
      projectTitle: null == projectTitle
          ? _value.projectTitle
          : projectTitle // ignore: cast_nullable_to_non_nullable
              as String,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
              as String,
      receiverUid: null == receiverUid
          ? _value.receiverUid
          : receiverUid // ignore: cast_nullable_to_non_nullable
              as String,
      receiverEmail: null == receiverEmail
          ? _value.receiverEmail
          : receiverEmail // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_InvitationDTOCopyWith<$Res>
    implements $InvitationDTOCopyWith<$Res> {
  factory _$$_InvitationDTOCopyWith(
          _$_InvitationDTO value, $Res Function(_$_InvitationDTO) then) =
      __$$_InvitationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectTitle,
      String projectUid,
      String receiverUid,
      String receiverEmail,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class __$$_InvitationDTOCopyWithImpl<$Res>
    extends _$InvitationDTOCopyWithImpl<$Res, _$_InvitationDTO>
    implements _$$_InvitationDTOCopyWith<$Res> {
  __$$_InvitationDTOCopyWithImpl(
      _$_InvitationDTO _value, $Res Function(_$_InvitationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectTitle = null,
    Object? projectUid = null,
    Object? receiverUid = null,
    Object? receiverEmail = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_InvitationDTO(
      projectTitle: null == projectTitle
          ? _value.projectTitle
          : projectTitle // ignore: cast_nullable_to_non_nullable
              as String,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
              as String,
      receiverUid: null == receiverUid
          ? _value.receiverUid
          : receiverUid // ignore: cast_nullable_to_non_nullable
              as String,
      receiverEmail: null == receiverEmail
          ? _value.receiverEmail
          : receiverEmail // ignore: cast_nullable_to_non_nullable
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
class _$_InvitationDTO implements _InvitationDTO {
  const _$_InvitationDTO(
      {required this.projectTitle,
      required this.projectUid,
      required this.receiverUid,
      required this.receiverEmail,
      required this.createdAt,
      required this.modificatedAt});

  factory _$_InvitationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_InvitationDTOFromJson(json);

  @override
  final String projectTitle;
  @override
  final String projectUid;
  @override
  final String receiverUid;
  @override
  final String receiverEmail;
  @override
  final DateTime createdAt;
  @override
  final DateTime modificatedAt;

  @override
  String toString() {
    return 'InvitationDTO(projectTitle: $projectTitle, projectUid: $projectUid, receiverUid: $receiverUid, receiverEmail: $receiverEmail, createdAt: $createdAt, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvitationDTO &&
            (identical(other.projectTitle, projectTitle) ||
                other.projectTitle == projectTitle) &&
            (identical(other.projectUid, projectUid) ||
                other.projectUid == projectUid) &&
            (identical(other.receiverUid, receiverUid) ||
                other.receiverUid == receiverUid) &&
            (identical(other.receiverEmail, receiverEmail) ||
                other.receiverEmail == receiverEmail) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, projectTitle, projectUid,
      receiverUid, receiverEmail, createdAt, modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvitationDTOCopyWith<_$_InvitationDTO> get copyWith =>
      __$$_InvitationDTOCopyWithImpl<_$_InvitationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvitationDTOToJson(
      this,
    );
  }
}

abstract class _InvitationDTO implements InvitationDTO {
  const factory _InvitationDTO(
      {required final String projectTitle,
      required final String projectUid,
      required final String receiverUid,
      required final String receiverEmail,
      required final DateTime createdAt,
      required final DateTime modificatedAt}) = _$_InvitationDTO;

  factory _InvitationDTO.fromJson(Map<String, dynamic> json) =
      _$_InvitationDTO.fromJson;

  @override
  String get projectTitle;
  @override
  String get projectUid;
  @override
  String get receiverUid;
  @override
  String get receiverEmail;
  @override
  DateTime get createdAt;
  @override
  DateTime get modificatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_InvitationDTOCopyWith<_$_InvitationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
