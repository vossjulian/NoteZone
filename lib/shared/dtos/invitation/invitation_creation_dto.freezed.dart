// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation_creation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvitationCreationDTO _$InvitationCreationDTOFromJson(
    Map<String, dynamic> json) {
  return _InvitationCreationDTO.fromJson(json);
}

/// @nodoc
mixin _$InvitationCreationDTO {
  String get projectTitle => throw _privateConstructorUsedError;
  String get projectUid => throw _privateConstructorUsedError;
  String get receiverEmail => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationCreationDTOCopyWith<InvitationCreationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationCreationDTOCopyWith<$Res> {
  factory $InvitationCreationDTOCopyWith(InvitationCreationDTO value,
          $Res Function(InvitationCreationDTO) then) =
      _$InvitationCreationDTOCopyWithImpl<$Res, InvitationCreationDTO>;
  @useResult
  $Res call(
      {String projectTitle,
      String projectUid,
      String receiverEmail,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class _$InvitationCreationDTOCopyWithImpl<$Res,
        $Val extends InvitationCreationDTO>
    implements $InvitationCreationDTOCopyWith<$Res> {
  _$InvitationCreationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectTitle = null,
    Object? projectUid = null,
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
abstract class _$$_InvitationCreationDTOCopyWith<$Res>
    implements $InvitationCreationDTOCopyWith<$Res> {
  factory _$$_InvitationCreationDTOCopyWith(_$_InvitationCreationDTO value,
          $Res Function(_$_InvitationCreationDTO) then) =
      __$$_InvitationCreationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectTitle,
      String projectUid,
      String receiverEmail,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class __$$_InvitationCreationDTOCopyWithImpl<$Res>
    extends _$InvitationCreationDTOCopyWithImpl<$Res, _$_InvitationCreationDTO>
    implements _$$_InvitationCreationDTOCopyWith<$Res> {
  __$$_InvitationCreationDTOCopyWithImpl(_$_InvitationCreationDTO _value,
      $Res Function(_$_InvitationCreationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectTitle = null,
    Object? projectUid = null,
    Object? receiverEmail = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_InvitationCreationDTO(
      projectTitle: null == projectTitle
          ? _value.projectTitle
          : projectTitle // ignore: cast_nullable_to_non_nullable
              as String,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
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
class _$_InvitationCreationDTO implements _InvitationCreationDTO {
  const _$_InvitationCreationDTO(
      {required this.projectTitle,
      required this.projectUid,
      required this.receiverEmail,
      required this.createdAt,
      required this.modificatedAt});

  factory _$_InvitationCreationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_InvitationCreationDTOFromJson(json);

  @override
  final String projectTitle;
  @override
  final String projectUid;
  @override
  final String receiverEmail;
  @override
  final DateTime createdAt;
  @override
  final DateTime modificatedAt;

  @override
  String toString() {
    return 'InvitationCreationDTO(projectTitle: $projectTitle, projectUid: $projectUid, receiverEmail: $receiverEmail, createdAt: $createdAt, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvitationCreationDTO &&
            (identical(other.projectTitle, projectTitle) ||
                other.projectTitle == projectTitle) &&
            (identical(other.projectUid, projectUid) ||
                other.projectUid == projectUid) &&
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
      receiverEmail, createdAt, modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvitationCreationDTOCopyWith<_$_InvitationCreationDTO> get copyWith =>
      __$$_InvitationCreationDTOCopyWithImpl<_$_InvitationCreationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvitationCreationDTOToJson(
      this,
    );
  }
}

abstract class _InvitationCreationDTO implements InvitationCreationDTO {
  const factory _InvitationCreationDTO(
      {required final String projectTitle,
      required final String projectUid,
      required final String receiverEmail,
      required final DateTime createdAt,
      required final DateTime modificatedAt}) = _$_InvitationCreationDTO;

  factory _InvitationCreationDTO.fromJson(Map<String, dynamic> json) =
      _$_InvitationCreationDTO.fromJson;

  @override
  String get projectTitle;
  @override
  String get projectUid;
  @override
  String get receiverEmail;
  @override
  DateTime get createdAt;
  @override
  DateTime get modificatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_InvitationCreationDTOCopyWith<_$_InvitationCreationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
