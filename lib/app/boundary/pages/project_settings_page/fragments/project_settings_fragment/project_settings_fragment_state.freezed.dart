// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_settings_fragment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectSettingsFragmentState {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  FormInputData get title => throw _privateConstructorUsedError;
  ProjectEntity? get currentProject => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectSettingsFragmentStateCopyWith<ProjectSettingsFragmentState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSettingsFragmentStateCopyWith<$Res> {
  factory $ProjectSettingsFragmentStateCopyWith(
          ProjectSettingsFragmentState value,
          $Res Function(ProjectSettingsFragmentState) then) =
      _$ProjectSettingsFragmentStateCopyWithImpl<$Res,
          ProjectSettingsFragmentState>;
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData title,
      ProjectEntity? currentProject,
      bool isLoading,
      bool success,
      bool error});

  $FormInputDataCopyWith<$Res> get title;
  $ProjectEntityCopyWith<$Res>? get currentProject;
}

/// @nodoc
class _$ProjectSettingsFragmentStateCopyWithImpl<$Res,
        $Val extends ProjectSettingsFragmentState>
    implements $ProjectSettingsFragmentStateCopyWith<$Res> {
  _$ProjectSettingsFragmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? title = null,
    Object? currentProject = freezed,
    Object? isLoading = null,
    Object? success = null,
    Object? error = null,
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
      currentProject: freezed == currentProject
          ? _value.currentProject
          : currentProject // ignore: cast_nullable_to_non_nullable
              as ProjectEntity?,
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
  $FormInputDataCopyWith<$Res> get title {
    return $FormInputDataCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectEntityCopyWith<$Res>? get currentProject {
    if (_value.currentProject == null) {
      return null;
    }

    return $ProjectEntityCopyWith<$Res>(_value.currentProject!, (value) {
      return _then(_value.copyWith(currentProject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProjectSettingsFragmentStateCopyWith<$Res>
    implements $ProjectSettingsFragmentStateCopyWith<$Res> {
  factory _$$_ProjectSettingsFragmentStateCopyWith(
          _$_ProjectSettingsFragmentState value,
          $Res Function(_$_ProjectSettingsFragmentState) then) =
      __$$_ProjectSettingsFragmentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState> formKey,
      FormInputData title,
      ProjectEntity? currentProject,
      bool isLoading,
      bool success,
      bool error});

  @override
  $FormInputDataCopyWith<$Res> get title;
  @override
  $ProjectEntityCopyWith<$Res>? get currentProject;
}

/// @nodoc
class __$$_ProjectSettingsFragmentStateCopyWithImpl<$Res>
    extends _$ProjectSettingsFragmentStateCopyWithImpl<$Res,
        _$_ProjectSettingsFragmentState>
    implements _$$_ProjectSettingsFragmentStateCopyWith<$Res> {
  __$$_ProjectSettingsFragmentStateCopyWithImpl(
      _$_ProjectSettingsFragmentState _value,
      $Res Function(_$_ProjectSettingsFragmentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? title = null,
    Object? currentProject = freezed,
    Object? isLoading = null,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(_$_ProjectSettingsFragmentState(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as FormInputData,
      currentProject: freezed == currentProject
          ? _value.currentProject
          : currentProject // ignore: cast_nullable_to_non_nullable
              as ProjectEntity?,
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

class _$_ProjectSettingsFragmentState implements _ProjectSettingsFragmentState {
  _$_ProjectSettingsFragmentState(
      {required this.formKey,
      required this.title,
      this.currentProject = null,
      this.isLoading = false,
      this.success = false,
      this.error = false});

  @override
  final GlobalKey<FormState> formKey;
  @override
  final FormInputData title;
  @override
  @JsonKey()
  final ProjectEntity? currentProject;
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
    return 'ProjectSettingsFragmentState(formKey: $formKey, title: $title, currentProject: $currentProject, isLoading: $isLoading, success: $success, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectSettingsFragmentState &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.currentProject, currentProject) ||
                other.currentProject == currentProject) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, formKey, title, currentProject, isLoading, success, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectSettingsFragmentStateCopyWith<_$_ProjectSettingsFragmentState>
      get copyWith => __$$_ProjectSettingsFragmentStateCopyWithImpl<
          _$_ProjectSettingsFragmentState>(this, _$identity);
}

abstract class _ProjectSettingsFragmentState
    implements ProjectSettingsFragmentState {
  factory _ProjectSettingsFragmentState(
      {required final GlobalKey<FormState> formKey,
      required final FormInputData title,
      final ProjectEntity? currentProject,
      final bool isLoading,
      final bool success,
      final bool error}) = _$_ProjectSettingsFragmentState;

  @override
  GlobalKey<FormState> get formKey;
  @override
  FormInputData get title;
  @override
  ProjectEntity? get currentProject;
  @override
  bool get isLoading;
  @override
  bool get success;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectSettingsFragmentStateCopyWith<_$_ProjectSettingsFragmentState>
      get copyWith => throw _privateConstructorUsedError;
}
