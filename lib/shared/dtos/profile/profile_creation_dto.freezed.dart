// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_creation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileCreationDTO _$ProfileCreationDTOFromJson(Map<String, dynamic> json) {
  return _ProfileCreationDTO.fromJson(json);
}

/// @nodoc
mixin _$ProfileCreationDTO {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCreationDTOCopyWith<ProfileCreationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCreationDTOCopyWith<$Res> {
  factory $ProfileCreationDTOCopyWith(
          ProfileCreationDTO value, $Res Function(ProfileCreationDTO) then) =
      _$ProfileCreationDTOCopyWithImpl<$Res, ProfileCreationDTO>;
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String email,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class _$ProfileCreationDTOCopyWithImpl<$Res, $Val extends ProfileCreationDTO>
    implements $ProfileCreationDTOCopyWith<$Res> {
  _$ProfileCreationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_value.copyWith(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ProfileCreationDTOCopyWith<$Res>
    implements $ProfileCreationDTOCopyWith<$Res> {
  factory _$$_ProfileCreationDTOCopyWith(_$_ProfileCreationDTO value,
          $Res Function(_$_ProfileCreationDTO) then) =
      __$$_ProfileCreationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String email,
      DateTime createdAt,
      DateTime modificatedAt});
}

/// @nodoc
class __$$_ProfileCreationDTOCopyWithImpl<$Res>
    extends _$ProfileCreationDTOCopyWithImpl<$Res, _$_ProfileCreationDTO>
    implements _$$_ProfileCreationDTOCopyWith<$Res> {
  __$$_ProfileCreationDTOCopyWithImpl(
      _$_ProfileCreationDTO _value, $Res Function(_$_ProfileCreationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? createdAt = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_ProfileCreationDTO(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$_ProfileCreationDTO implements _ProfileCreationDTO {
  const _$_ProfileCreationDTO(
      {required this.firstname,
      required this.lastname,
      required this.email,
      required this.createdAt,
      required this.modificatedAt});

  factory _$_ProfileCreationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileCreationDTOFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  final DateTime createdAt;
  @override
  final DateTime modificatedAt;

  @override
  String toString() {
    return 'ProfileCreationDTO(firstname: $firstname, lastname: $lastname, email: $email, createdAt: $createdAt, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileCreationDTO &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstname, lastname, email, createdAt, modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileCreationDTOCopyWith<_$_ProfileCreationDTO> get copyWith =>
      __$$_ProfileCreationDTOCopyWithImpl<_$_ProfileCreationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileCreationDTOToJson(
      this,
    );
  }
}

abstract class _ProfileCreationDTO implements ProfileCreationDTO {
  const factory _ProfileCreationDTO(
      {required final String firstname,
      required final String lastname,
      required final String email,
      required final DateTime createdAt,
      required final DateTime modificatedAt}) = _$_ProfileCreationDTO;

  factory _ProfileCreationDTO.fromJson(Map<String, dynamic> json) =
      _$_ProfileCreationDTO.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get email;
  @override
  DateTime get createdAt;
  @override
  DateTime get modificatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCreationDTOCopyWith<_$_ProfileCreationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
