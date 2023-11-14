// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_crud_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectCRUDState {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  FormInputData get title => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectCRUDStateCopyWith<ProjectCRUDState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCRUDStateCopyWith<$Res> {
  factory $ProjectCRUDStateCopyWith(
          ProjectCRUDState value, $Res Function(ProjectCRUDState) then) =
      _$ProjectCRUDStateCopyWithImpl<$Res, ProjectCRUDState>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData title,
      bool error,
      bool success,
      bool loading});

  $FormInputDataCopyWith<$Res> get title;
}

/// @nodoc
class _$ProjectCRUDStateCopyWithImpl<$Res, $Val extends ProjectCRUDState>
    implements $ProjectCRUDStateCopyWith<$Res> {
  _$ProjectCRUDStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? title = null,
    Object? error = null,
    Object? success = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormInputDataCopyWith<$Res> get title {
    return $FormInputDataCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProjectCRUDStateCopyWith<$Res>
    implements $ProjectCRUDStateCopyWith<$Res> {
  factory _$$_ProjectCRUDStateCopyWith(
          _$_ProjectCRUDState value, $Res Function(_$_ProjectCRUDState) then) =
      __$$_ProjectCRUDStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData title,
      bool error,
      bool success,
      bool loading});

  @override
  $FormInputDataCopyWith<$Res> get title;
}

/// @nodoc
class __$$_ProjectCRUDStateCopyWithImpl<$Res>
    extends _$ProjectCRUDStateCopyWithImpl<$Res, _$_ProjectCRUDState>
    implements _$$_ProjectCRUDStateCopyWith<$Res> {
  __$$_ProjectCRUDStateCopyWithImpl(
      _$_ProjectCRUDState _value, $Res Function(_$_ProjectCRUDState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? title = null,
    Object? error = null,
    Object? success = null,
    Object? loading = null,
  }) {
    return _then(_$_ProjectCRUDState(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProjectCRUDState implements _ProjectCRUDState {
  _$_ProjectCRUDState(
      {required this.formKey,
      required this.title,
      this.error = false,
      this.success = false,
      this.loading = false});

  @override
  final GlobalKey<FormState> formKey;
  @override
  final FormInputData title;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'ProjectCRUDState(formKey: $formKey, title: $title, error: $error, success: $success, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectCRUDState &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, formKey, title, error, success, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCRUDStateCopyWith<_$_ProjectCRUDState> get copyWith =>
      __$$_ProjectCRUDStateCopyWithImpl<_$_ProjectCRUDState>(this, _$identity);
}

abstract class _ProjectCRUDState implements ProjectCRUDState {
  factory _ProjectCRUDState(
      {required final GlobalKey<FormState> formKey,
      required final FormInputData title,
      final bool error,
      final bool success,
      final bool loading}) = _$_ProjectCRUDState;

  @override
  GlobalKey<FormState> get formKey;
  @override
  FormInputData get title;
  @override
  bool get error;
  @override
  bool get success;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCRUDStateCopyWith<_$_ProjectCRUDState> get copyWith =>
      throw _privateConstructorUsedError;
}
