// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_crud_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoCRUDState {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  FormInputData get heading => throw _privateConstructorUsedError;
  FormInputData get deadline => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoCRUDStateCopyWith<TodoCRUDState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCRUDStateCopyWith<$Res> {
  factory $TodoCRUDStateCopyWith(
          TodoCRUDState value, $Res Function(TodoCRUDState) then) =
      _$TodoCRUDStateCopyWithImpl<$Res, TodoCRUDState>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData heading,
      FormInputData deadline,
      bool isLoading});

  $FormInputDataCopyWith<$Res> get heading;
  $FormInputDataCopyWith<$Res> get deadline;
}

/// @nodoc
class _$TodoCRUDStateCopyWithImpl<$Res, $Val extends TodoCRUDState>
    implements $TodoCRUDStateCopyWith<$Res> {
  _$TodoCRUDStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? heading = null,
    Object? deadline = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormInputDataCopyWith<$Res> get heading {
    return $FormInputDataCopyWith<$Res>(_value.heading, (value) {
      return _then(_value.copyWith(heading: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormInputDataCopyWith<$Res> get deadline {
    return $FormInputDataCopyWith<$Res>(_value.deadline, (value) {
      return _then(_value.copyWith(deadline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoCRUDStateCopyWith<$Res>
    implements $TodoCRUDStateCopyWith<$Res> {
  factory _$$_TodoCRUDStateCopyWith(
          _$_TodoCRUDState value, $Res Function(_$_TodoCRUDState) then) =
      __$$_TodoCRUDStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData heading,
      FormInputData deadline,
      bool isLoading});

  @override
  $FormInputDataCopyWith<$Res> get heading;
  @override
  $FormInputDataCopyWith<$Res> get deadline;
}

/// @nodoc
class __$$_TodoCRUDStateCopyWithImpl<$Res>
    extends _$TodoCRUDStateCopyWithImpl<$Res, _$_TodoCRUDState>
    implements _$$_TodoCRUDStateCopyWith<$Res> {
  __$$_TodoCRUDStateCopyWithImpl(
      _$_TodoCRUDState _value, $Res Function(_$_TodoCRUDState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? heading = null,
    Object? deadline = null,
    Object? isLoading = null,
  }) {
    return _then(_$_TodoCRUDState(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TodoCRUDState implements _TodoCRUDState {
  _$_TodoCRUDState(
      {required this.formKey,
      required this.heading,
      required this.deadline,
      this.isLoading = false});

  @override
  final GlobalKey<FormState> formKey;
  @override
  final FormInputData heading;
  @override
  final FormInputData deadline;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'TodoCRUDState(formKey: $formKey, heading: $heading, deadline: $deadline, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoCRUDState &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, formKey, heading, deadline, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoCRUDStateCopyWith<_$_TodoCRUDState> get copyWith =>
      __$$_TodoCRUDStateCopyWithImpl<_$_TodoCRUDState>(this, _$identity);
}

abstract class _TodoCRUDState implements TodoCRUDState {
  factory _TodoCRUDState(
      {required final GlobalKey<FormState> formKey,
      required final FormInputData heading,
      required final FormInputData deadline,
      final bool isLoading}) = _$_TodoCRUDState;

  @override
  GlobalKey<FormState> get formKey;
  @override
  FormInputData get heading;
  @override
  FormInputData get deadline;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_TodoCRUDStateCopyWith<_$_TodoCRUDState> get copyWith =>
      throw _privateConstructorUsedError;
}
