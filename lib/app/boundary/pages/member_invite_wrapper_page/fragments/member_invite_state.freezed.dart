// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_invite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MemberInviteState {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  FormInputData get email => throw _privateConstructorUsedError;
  String get projectUid => throw _privateConstructorUsedError;
  String get projectTitle => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberInviteStateCopyWith<MemberInviteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberInviteStateCopyWith<$Res> {
  factory $MemberInviteStateCopyWith(
          MemberInviteState value, $Res Function(MemberInviteState) then) =
      _$MemberInviteStateCopyWithImpl<$Res, MemberInviteState>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData email,
      String projectUid,
      String projectTitle,
      bool isLoading,
      bool success,
      bool error});

  $FormInputDataCopyWith<$Res> get email;
}

/// @nodoc
class _$MemberInviteStateCopyWithImpl<$Res, $Val extends MemberInviteState>
    implements $MemberInviteStateCopyWith<$Res> {
  _$MemberInviteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? email = null,
    Object? projectUid = null,
    Object? projectTitle = null,
    Object? isLoading = null,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
              as String,
      projectTitle: null == projectTitle
          ? _value.projectTitle
          : projectTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormInputDataCopyWith<$Res> get email {
    return $FormInputDataCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MemberInviteStateCopyWith<$Res>
    implements $MemberInviteStateCopyWith<$Res> {
  factory _$$_MemberInviteStateCopyWith(_$_MemberInviteState value,
          $Res Function(_$_MemberInviteState) then) =
      __$$_MemberInviteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData email,
      String projectUid,
      String projectTitle,
      bool isLoading,
      bool success,
      bool error});

  @override
  $FormInputDataCopyWith<$Res> get email;
}

/// @nodoc
class __$$_MemberInviteStateCopyWithImpl<$Res>
    extends _$MemberInviteStateCopyWithImpl<$Res, _$_MemberInviteState>
    implements _$$_MemberInviteStateCopyWith<$Res> {
  __$$_MemberInviteStateCopyWithImpl(
      _$_MemberInviteState _value, $Res Function(_$_MemberInviteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? email = null,
    Object? projectUid = null,
    Object? projectTitle = null,
    Object? isLoading = null,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(_$_MemberInviteState(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
              as String,
      projectTitle: null == projectTitle
          ? _value.projectTitle
          : projectTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MemberInviteState implements _MemberInviteState {
  _$_MemberInviteState(
      {required this.formKey,
      required this.email,
      this.projectUid = "",
      this.projectTitle = "",
      this.isLoading = false,
      this.success = false,
      this.error = false});

  @override
  final GlobalKey<FormState> formKey;
  @override
  final FormInputData email;
  @override
  @JsonKey()
  final String projectUid;
  @override
  @JsonKey()
  final String projectTitle;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool error;

  @override
  String toString() {
    return 'MemberInviteState(formKey: $formKey, email: $email, projectUid: $projectUid, projectTitle: $projectTitle, isLoading: $isLoading, success: $success, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberInviteState &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.projectUid, projectUid) ||
                other.projectUid == projectUid) &&
            (identical(other.projectTitle, projectTitle) ||
                other.projectTitle == projectTitle) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey, email, projectUid,
      projectTitle, isLoading, success, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberInviteStateCopyWith<_$_MemberInviteState> get copyWith =>
      __$$_MemberInviteStateCopyWithImpl<_$_MemberInviteState>(
          this, _$identity);
}

abstract class _MemberInviteState implements MemberInviteState {
  factory _MemberInviteState(
      {required final GlobalKey<FormState> formKey,
      required final FormInputData email,
      final String projectUid,
      final String projectTitle,
      final bool isLoading,
      final bool success,
      final bool error}) = _$_MemberInviteState;

  @override
  GlobalKey<FormState> get formKey;
  @override
  FormInputData get email;
  @override
  String get projectUid;
  @override
  String get projectTitle;
  @override
  bool get isLoading;
  @override
  bool get success;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$_MemberInviteStateCopyWith<_$_MemberInviteState> get copyWith =>
      throw _privateConstructorUsedError;
}
