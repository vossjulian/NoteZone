// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentState {
  List<AppointmentEntity> get appointments =>
      throw _privateConstructorUsedError;
  AppointmentEntity? get selectedAppointment =>
      throw _privateConstructorUsedError;
  DateTime get selectedDay => throw _privateConstructorUsedError;
  DateTime get focusDay => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentStateCopyWith<AppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res, AppointmentState>;
  @useResult
  $Res call(
      {List<AppointmentEntity> appointments,
      AppointmentEntity? selectedAppointment,
      DateTime selectedDay,
      DateTime focusDay,
      bool isLoading,
      bool error,
      bool success});

  $AppointmentEntityCopyWith<$Res>? get selectedAppointment;
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res, $Val extends AppointmentState>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointments = null,
    Object? selectedAppointment = freezed,
    Object? selectedDay = null,
    Object? focusDay = null,
    Object? isLoading = null,
    Object? error = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      appointments: null == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<AppointmentEntity>,
      selectedAppointment: freezed == selectedAppointment
          ? _value.selectedAppointment
          : selectedAppointment // ignore: cast_nullable_to_non_nullable
              as AppointmentEntity?,
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusDay: null == focusDay
          ? _value.focusDay
          : focusDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentEntityCopyWith<$Res>? get selectedAppointment {
    if (_value.selectedAppointment == null) {
      return null;
    }

    return $AppointmentEntityCopyWith<$Res>(_value.selectedAppointment!,
        (value) {
      return _then(_value.copyWith(selectedAppointment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppointmentStateCopyWith<$Res>
    implements $AppointmentStateCopyWith<$Res> {
  factory _$$_AppointmentStateCopyWith(
          _$_AppointmentState value, $Res Function(_$_AppointmentState) then) =
      __$$_AppointmentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AppointmentEntity> appointments,
      AppointmentEntity? selectedAppointment,
      DateTime selectedDay,
      DateTime focusDay,
      bool isLoading,
      bool error,
      bool success});

  @override
  $AppointmentEntityCopyWith<$Res>? get selectedAppointment;
}

/// @nodoc
class __$$_AppointmentStateCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$_AppointmentState>
    implements _$$_AppointmentStateCopyWith<$Res> {
  __$$_AppointmentStateCopyWithImpl(
      _$_AppointmentState _value, $Res Function(_$_AppointmentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointments = null,
    Object? selectedAppointment = freezed,
    Object? selectedDay = null,
    Object? focusDay = null,
    Object? isLoading = null,
    Object? error = null,
    Object? success = null,
  }) {
    return _then(_$_AppointmentState(
      appointments: null == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<AppointmentEntity>,
      selectedAppointment: freezed == selectedAppointment
          ? _value.selectedAppointment
          : selectedAppointment // ignore: cast_nullable_to_non_nullable
              as AppointmentEntity?,
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusDay: null == focusDay
          ? _value.focusDay
          : focusDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppointmentState implements _AppointmentState {
  _$_AppointmentState(
      {final List<AppointmentEntity> appointments = const [],
      this.selectedAppointment = null,
      required this.selectedDay,
      required this.focusDay,
      this.isLoading = false,
      this.error = false,
      this.success = false})
      : _appointments = appointments;

  final List<AppointmentEntity> _appointments;
  @override
  @JsonKey()
  List<AppointmentEntity> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  @JsonKey()
  final AppointmentEntity? selectedAppointment;
  @override
  final DateTime selectedDay;
  @override
  final DateTime focusDay;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'AppointmentState(appointments: $appointments, selectedAppointment: $selectedAppointment, selectedDay: $selectedDay, focusDay: $focusDay, isLoading: $isLoading, error: $error, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentState &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments) &&
            (identical(other.selectedAppointment, selectedAppointment) ||
                other.selectedAppointment == selectedAppointment) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.focusDay, focusDay) ||
                other.focusDay == focusDay) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_appointments),
      selectedAppointment,
      selectedDay,
      focusDay,
      isLoading,
      error,
      success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentStateCopyWith<_$_AppointmentState> get copyWith =>
      __$$_AppointmentStateCopyWithImpl<_$_AppointmentState>(this, _$identity);
}

abstract class _AppointmentState implements AppointmentState {
  factory _AppointmentState(
      {final List<AppointmentEntity> appointments,
      final AppointmentEntity? selectedAppointment,
      required final DateTime selectedDay,
      required final DateTime focusDay,
      final bool isLoading,
      final bool error,
      final bool success}) = _$_AppointmentState;

  @override
  List<AppointmentEntity> get appointments;
  @override
  AppointmentEntity? get selectedAppointment;
  @override
  DateTime get selectedDay;
  @override
  DateTime get focusDay;
  @override
  bool get isLoading;
  @override
  bool get error;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentStateCopyWith<_$_AppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
