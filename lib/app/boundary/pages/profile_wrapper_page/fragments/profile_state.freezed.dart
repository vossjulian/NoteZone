// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  FormInputData get firstname => throw _privateConstructorUsedError;
  FormInputData get lastname => throw _privateConstructorUsedError;
  FormInputData get email => throw _privateConstructorUsedError;
  List<InvitationEntity> get invitations => throw _privateConstructorUsedError;
  ProfileEntity? get currentProfile => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData firstname,
      FormInputData lastname,
      FormInputData email,
      List<InvitationEntity> invitations,
      ProfileEntity? currentProfile,
      bool isLoading,
      bool success,
      bool error});

  $FormInputDataCopyWith<$Res> get firstname;
  $FormInputDataCopyWith<$Res> get lastname;
  $FormInputDataCopyWith<$Res> get email;
  $ProfileEntityCopyWith<$Res>? get currentProfile;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? invitations = null,
    Object? currentProfile = freezed,
    Object? isLoading = null,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      invitations: null == invitations
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as List<InvitationEntity>,
      currentProfile: freezed == currentProfile
          ? _value.currentProfile
          : currentProfile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
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
  $FormInputDataCopyWith<$Res> get firstname {
    return $FormInputDataCopyWith<$Res>(_value.firstname, (value) {
      return _then(_value.copyWith(firstname: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormInputDataCopyWith<$Res> get lastname {
    return $FormInputDataCopyWith<$Res>(_value.lastname, (value) {
      return _then(_value.copyWith(lastname: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormInputDataCopyWith<$Res> get email {
    return $FormInputDataCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileEntityCopyWith<$Res>? get currentProfile {
    if (_value.currentProfile == null) {
      return null;
    }

    return $ProfileEntityCopyWith<$Res>(_value.currentProfile!, (value) {
      return _then(_value.copyWith(currentProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData firstname,
      FormInputData lastname,
      FormInputData email,
      List<InvitationEntity> invitations,
      ProfileEntity? currentProfile,
      bool isLoading,
      bool success,
      bool error});

  @override
  $FormInputDataCopyWith<$Res> get firstname;
  @override
  $FormInputDataCopyWith<$Res> get lastname;
  @override
  $FormInputDataCopyWith<$Res> get email;
  @override
  $ProfileEntityCopyWith<$Res>? get currentProfile;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? invitations = null,
    Object? currentProfile = freezed,
    Object? isLoading = null,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(_$_ProfileState(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      invitations: null == invitations
          ? _value._invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as List<InvitationEntity>,
      currentProfile: freezed == currentProfile
          ? _value.currentProfile
          : currentProfile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
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

class _$_ProfileState implements _ProfileState {
  _$_ProfileState(
      {required this.formKey,
      required this.firstname,
      required this.lastname,
      required this.email,
      final List<InvitationEntity> invitations = const [],
      this.currentProfile = null,
      this.isLoading = false,
      this.success = false,
      this.error = false})
      : _invitations = invitations;

  @override
  final GlobalKey<FormState> formKey;
  @override
  final FormInputData firstname;
  @override
  final FormInputData lastname;
  @override
  final FormInputData email;
  final List<InvitationEntity> _invitations;
  @override
  @JsonKey()
  List<InvitationEntity> get invitations {
    if (_invitations is EqualUnmodifiableListView) return _invitations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invitations);
  }

  @override
  @JsonKey()
  final ProfileEntity? currentProfile;
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
    return 'ProfileState(formKey: $formKey, firstname: $firstname, lastname: $lastname, email: $email, invitations: $invitations, currentProfile: $currentProfile, isLoading: $isLoading, success: $success, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other._invitations, _invitations) &&
            (identical(other.currentProfile, currentProfile) ||
                other.currentProfile == currentProfile) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      formKey,
      firstname,
      lastname,
      email,
      const DeepCollectionEquality().hash(_invitations),
      currentProfile,
      isLoading,
      success,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  factory _ProfileState(
      {required final GlobalKey<FormState> formKey,
      required final FormInputData firstname,
      required final FormInputData lastname,
      required final FormInputData email,
      final List<InvitationEntity> invitations,
      final ProfileEntity? currentProfile,
      final bool isLoading,
      final bool success,
      final bool error}) = _$_ProfileState;

  @override
  GlobalKey<FormState> get formKey;
  @override
  FormInputData get firstname;
  @override
  FormInputData get lastname;
  @override
  FormInputData get email;
  @override
  List<InvitationEntity> get invitations;
  @override
  ProfileEntity? get currentProfile;
  @override
  bool get isLoading;
  @override
  bool get success;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
