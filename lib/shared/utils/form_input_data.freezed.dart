// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_input_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormInputData {
  String get value => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormInputDataCopyWith<FormInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormInputDataCopyWith<$Res> {
  factory $FormInputDataCopyWith(
          FormInputData value, $Res Function(FormInputData) then) =
      _$FormInputDataCopyWithImpl<$Res, FormInputData>;
  @useResult
  $Res call({String value, String error, bool isValid});
}

/// @nodoc
class _$FormInputDataCopyWithImpl<$Res, $Val extends FormInputData>
    implements $FormInputDataCopyWith<$Res> {
  _$FormInputDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? error = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormInputDataCopyWith<$Res>
    implements $FormInputDataCopyWith<$Res> {
  factory _$$_FormInputDataCopyWith(
          _$_FormInputData value, $Res Function(_$_FormInputData) then) =
      __$$_FormInputDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String error, bool isValid});
}

/// @nodoc
class __$$_FormInputDataCopyWithImpl<$Res>
    extends _$FormInputDataCopyWithImpl<$Res, _$_FormInputData>
    implements _$$_FormInputDataCopyWith<$Res> {
  __$$_FormInputDataCopyWithImpl(
      _$_FormInputData _value, $Res Function(_$_FormInputData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? error = null,
    Object? isValid = null,
  }) {
    return _then(_$_FormInputData(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FormInputData implements _FormInputData {
  _$_FormInputData({this.value = "", this.error = "", this.isValid = false});

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'FormInputData(value: $value, error: $error, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormInputData &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, error, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormInputDataCopyWith<_$_FormInputData> get copyWith =>
      __$$_FormInputDataCopyWithImpl<_$_FormInputData>(this, _$identity);
}

abstract class _FormInputData implements FormInputData {
  factory _FormInputData(
      {final String value,
      final String error,
      final bool isValid}) = _$_FormInputData;

  @override
  String get value;
  @override
  String get error;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_FormInputDataCopyWith<_$_FormInputData> get copyWith =>
      throw _privateConstructorUsedError;
}
