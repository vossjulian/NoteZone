// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_crud_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteCRUDState {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  FormInputData get title => throw _privateConstructorUsedError;
  FormInputData get content => throw _privateConstructorUsedError;
  NoteEntity? get noteEntity => throw _privateConstructorUsedError;
  String get projectUid => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteCRUDStateCopyWith<NoteCRUDState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCRUDStateCopyWith<$Res> {
  factory $NoteCRUDStateCopyWith(
          NoteCRUDState value, $Res Function(NoteCRUDState) then) =
      _$NoteCRUDStateCopyWithImpl<$Res, NoteCRUDState>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData title,
      FormInputData content,
      NoteEntity? noteEntity,
      String projectUid,
      bool error,
      bool success,
      bool loading});

  $FormInputDataCopyWith<$Res> get title;
  $FormInputDataCopyWith<$Res> get content;
  $NoteEntityCopyWith<$Res>? get noteEntity;
}

/// @nodoc
class _$NoteCRUDStateCopyWithImpl<$Res, $Val extends NoteCRUDState>
    implements $NoteCRUDStateCopyWith<$Res> {
  _$NoteCRUDStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? title = null,
    Object? content = null,
    Object? noteEntity = freezed,
    Object? projectUid = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      noteEntity: freezed == noteEntity
          ? _value.noteEntity
          : noteEntity // ignore: cast_nullable_to_non_nullable
              as NoteEntity?,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
              as String,
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

  @override
  @pragma('vm:prefer-inline')
  $FormInputDataCopyWith<$Res> get content {
    return $FormInputDataCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteEntityCopyWith<$Res>? get noteEntity {
    if (_value.noteEntity == null) {
      return null;
    }

    return $NoteEntityCopyWith<$Res>(_value.noteEntity!, (value) {
      return _then(_value.copyWith(noteEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NoteCRUDStateCopyWith<$Res>
    implements $NoteCRUDStateCopyWith<$Res> {
  factory _$$_NoteCRUDStateCopyWith(
          _$_NoteCRUDState value, $Res Function(_$_NoteCRUDState) then) =
      __$$_NoteCRUDStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData title,
      FormInputData content,
      NoteEntity? noteEntity,
      String projectUid,
      bool error,
      bool success,
      bool loading});

  @override
  $FormInputDataCopyWith<$Res> get title;
  @override
  $FormInputDataCopyWith<$Res> get content;
  @override
  $NoteEntityCopyWith<$Res>? get noteEntity;
}

/// @nodoc
class __$$_NoteCRUDStateCopyWithImpl<$Res>
    extends _$NoteCRUDStateCopyWithImpl<$Res, _$_NoteCRUDState>
    implements _$$_NoteCRUDStateCopyWith<$Res> {
  __$$_NoteCRUDStateCopyWithImpl(
      _$_NoteCRUDState _value, $Res Function(_$_NoteCRUDState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? title = null,
    Object? content = null,
    Object? noteEntity = freezed,
    Object? projectUid = null,
    Object? error = null,
    Object? success = null,
    Object? loading = null,
  }) {
    return _then(_$_NoteCRUDState(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      noteEntity: freezed == noteEntity
          ? _value.noteEntity
          : noteEntity // ignore: cast_nullable_to_non_nullable
              as NoteEntity?,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_NoteCRUDState implements _NoteCRUDState {
  _$_NoteCRUDState(
      {required this.formKey,
      required this.title,
      required this.content,
      this.noteEntity = null,
      this.projectUid = "",
      this.error = false,
      this.success = false,
      this.loading = false});

  @override
  final GlobalKey<FormState> formKey;
  @override
  final FormInputData title;
  @override
  final FormInputData content;
  @override
  @JsonKey()
  final NoteEntity? noteEntity;
  @override
  @JsonKey()
  final String projectUid;
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
    return 'NoteCRUDState(formKey: $formKey, title: $title, content: $content, noteEntity: $noteEntity, projectUid: $projectUid, error: $error, success: $success, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteCRUDState &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.noteEntity, noteEntity) ||
                other.noteEntity == noteEntity) &&
            (identical(other.projectUid, projectUid) ||
                other.projectUid == projectUid) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey, title, content,
      noteEntity, projectUid, error, success, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteCRUDStateCopyWith<_$_NoteCRUDState> get copyWith =>
      __$$_NoteCRUDStateCopyWithImpl<_$_NoteCRUDState>(this, _$identity);
}

abstract class _NoteCRUDState implements NoteCRUDState {
  factory _NoteCRUDState(
      {required final GlobalKey<FormState> formKey,
      required final FormInputData title,
      required final FormInputData content,
      final NoteEntity? noteEntity,
      final String projectUid,
      final bool error,
      final bool success,
      final bool loading}) = _$_NoteCRUDState;

  @override
  GlobalKey<FormState> get formKey;
  @override
  FormInputData get title;
  @override
  FormInputData get content;
  @override
  NoteEntity? get noteEntity;
  @override
  String get projectUid;
  @override
  bool get error;
  @override
  bool get success;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_NoteCRUDStateCopyWith<_$_NoteCRUDState> get copyWith =>
      throw _privateConstructorUsedError;
}
