// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvitationEntity {
  String get uid => throw _privateConstructorUsedError;
  String get projectUid => throw _privateConstructorUsedError;
  String get projectTitle => throw _privateConstructorUsedError;
  String get receiverUid => throw _privateConstructorUsedError;
  String get receiverEmail => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvitationEntityCopyWith<InvitationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationEntityCopyWith<$Res> {
  factory $InvitationEntityCopyWith(
          InvitationEntity value, $Res Function(InvitationEntity) then) =
      _$InvitationEntityCopyWithImpl<$Res, InvitationEntity>;
  @useResult
  $Res call(
      {String uid,
      String projectUid,
      String projectTitle,
      String receiverUid,
      String receiverEmail,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class _$InvitationEntityCopyWithImpl<$Res, $Val extends InvitationEntity>
    implements $InvitationEntityCopyWith<$Res> {
  _$InvitationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? projectUid = null,
    Object? projectTitle = null,
    Object? receiverUid = null,
    Object? receiverEmail = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
              as String,
      projectTitle: null == projectTitle
          ? _value.projectTitle
          : projectTitle // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_InvitationEntityCopyWith<$Res>
    implements $InvitationEntityCopyWith<$Res> {
  factory _$$_InvitationEntityCopyWith(
          _$_InvitationEntity value, $Res Function(_$_InvitationEntity) then) =
      __$$_InvitationEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String projectUid,
      String projectTitle,
      String receiverUid,
      String receiverEmail,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class __$$_InvitationEntityCopyWithImpl<$Res>
    extends _$InvitationEntityCopyWithImpl<$Res, _$_InvitationEntity>
    implements _$$_InvitationEntityCopyWith<$Res> {
  __$$_InvitationEntityCopyWithImpl(
      _$_InvitationEntity _value, $Res Function(_$_InvitationEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? projectUid = null,
    Object? projectTitle = null,
    Object? receiverUid = null,
    Object? receiverEmail = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_InvitationEntity(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
              as String,
      projectTitle: null == projectTitle
          ? _value.projectTitle
          : projectTitle // ignore: cast_nullable_to_non_nullable
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

class _$_InvitationEntity implements _InvitationEntity {
  _$_InvitationEntity(
      {required this.uid,
      required this.projectUid,
      required this.projectTitle,
      required this.receiverUid,
      required this.receiverEmail,
      required this.createdAt,
      required this.modificatedAt});

  @override
  final String uid;
  @override
  final String projectUid;
  @override
  final String projectTitle;
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
    return 'InvitationEntity(uid: $uid, projectUid: $projectUid, projectTitle: $projectTitle, receiverUid: $receiverUid, receiverEmail: $receiverEmail, createdAt: $createdAt, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvitationEntity &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.projectUid, projectUid) ||
                other.projectUid == projectUid) &&
            (identical(other.projectTitle, projectTitle) ||
                other.projectTitle == projectTitle) &&
            (identical(other.receiverUid, receiverUid) ||
                other.receiverUid == receiverUid) &&
            (identical(other.receiverEmail, receiverEmail) ||
                other.receiverEmail == receiverEmail) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, projectUid, projectTitle,
      receiverUid, receiverEmail, createdAt, modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvitationEntityCopyWith<_$_InvitationEntity> get copyWith =>
      __$$_InvitationEntityCopyWithImpl<_$_InvitationEntity>(this, _$identity);
}

abstract class _InvitationEntity implements InvitationEntity {
  factory _InvitationEntity(
      {required final String uid,
      required final String projectUid,
      required final String projectTitle,
      required final String receiverUid,
      required final String receiverEmail,
      required final DateTime createdAt,
      required final DateTime modificatedAt}) = _$_InvitationEntity;

  @override
  String get uid;
  @override
  String get projectUid;
  @override
  String get projectTitle;
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
  _$$_InvitationEntityCopyWith<_$_InvitationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
