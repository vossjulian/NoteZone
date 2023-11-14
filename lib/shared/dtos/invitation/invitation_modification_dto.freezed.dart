// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation_modification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvitationModificationDTO _$InvitationModificationDTOFromJson(
    Map<String, dynamic> json) {
  return _InvitationModificationDTO.fromJson(json);
}

/// @nodoc
mixin _$InvitationModificationDTO {
  bool get hasAccepted => throw _privateConstructorUsedError;
  bool get hasRejected => throw _privateConstructorUsedError;
  DateTime get modificatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationModificationDTOCopyWith<InvitationModificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationModificationDTOCopyWith<$Res> {
  factory $InvitationModificationDTOCopyWith(InvitationModificationDTO value,
          $Res Function(InvitationModificationDTO) then) =
      _$InvitationModificationDTOCopyWithImpl<$Res, InvitationModificationDTO>;
  @useResult
  $Res call({bool hasAccepted, bool hasRejected, DateTime modificatedAt});
}

/// @nodoc
class _$InvitationModificationDTOCopyWithImpl<$Res,
        $Val extends InvitationModificationDTO>
    implements $InvitationModificationDTOCopyWith<$Res> {
  _$InvitationModificationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAccepted = null,
    Object? hasRejected = null,
    Object? modificatedAt = null,
  }) {
    return _then(_value.copyWith(
      hasAccepted: null == hasAccepted
          ? _value.hasAccepted
          : hasAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRejected: null == hasRejected
          ? _value.hasRejected
          : hasRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvitationModificationDTOCopyWith<$Res>
    implements $InvitationModificationDTOCopyWith<$Res> {
  factory _$$_InvitationModificationDTOCopyWith(
          _$_InvitationModificationDTO value,
          $Res Function(_$_InvitationModificationDTO) then) =
      __$$_InvitationModificationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasAccepted, bool hasRejected, DateTime modificatedAt});
}

/// @nodoc
class __$$_InvitationModificationDTOCopyWithImpl<$Res>
    extends _$InvitationModificationDTOCopyWithImpl<$Res,
        _$_InvitationModificationDTO>
    implements _$$_InvitationModificationDTOCopyWith<$Res> {
  __$$_InvitationModificationDTOCopyWithImpl(
      _$_InvitationModificationDTO _value,
      $Res Function(_$_InvitationModificationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAccepted = null,
    Object? hasRejected = null,
    Object? modificatedAt = null,
  }) {
    return _then(_$_InvitationModificationDTO(
      hasAccepted: null == hasAccepted
          ? _value.hasAccepted
          : hasAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRejected: null == hasRejected
          ? _value.hasRejected
          : hasRejected // ignore: cast_nullable_to_non_nullable
              as bool,
      modificatedAt: null == modificatedAt
          ? _value.modificatedAt
          : modificatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvitationModificationDTO implements _InvitationModificationDTO {
  const _$_InvitationModificationDTO(
      {required this.hasAccepted,
      required this.hasRejected,
      required this.modificatedAt});

  factory _$_InvitationModificationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_InvitationModificationDTOFromJson(json);

  @override
  final bool hasAccepted;
  @override
  final bool hasRejected;
  @override
  final DateTime modificatedAt;

  @override
  String toString() {
    return 'InvitationModificationDTO(hasAccepted: $hasAccepted, hasRejected: $hasRejected, modificatedAt: $modificatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvitationModificationDTO &&
            (identical(other.hasAccepted, hasAccepted) ||
                other.hasAccepted == hasAccepted) &&
            (identical(other.hasRejected, hasRejected) ||
                other.hasRejected == hasRejected) &&
            (identical(other.modificatedAt, modificatedAt) ||
                other.modificatedAt == modificatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hasAccepted, hasRejected, modificatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvitationModificationDTOCopyWith<_$_InvitationModificationDTO>
      get copyWith => __$$_InvitationModificationDTOCopyWithImpl<
          _$_InvitationModificationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvitationModificationDTOToJson(
      this,
    );
  }
}

abstract class _InvitationModificationDTO implements InvitationModificationDTO {
  const factory _InvitationModificationDTO(
      {required final bool hasAccepted,
      required final bool hasRejected,
      required final DateTime modificatedAt}) = _$_InvitationModificationDTO;

  factory _InvitationModificationDTO.fromJson(Map<String, dynamic> json) =
      _$_InvitationModificationDTO.fromJson;

  @override
  bool get hasAccepted;
  @override
  bool get hasRejected;
  @override
  DateTime get modificatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_InvitationModificationDTOCopyWith<_$_InvitationModificationDTO>
      get copyWith => throw _privateConstructorUsedError;
}
