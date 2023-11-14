import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/appointment_entity.dart';

part 'appointment_state.freezed.dart';

@freezed
class AppointmentState with _$AppointmentState {
  factory AppointmentState({
    @Default([]) List<AppointmentEntity> appointments,
    @Default(null) AppointmentEntity? selectedAppointment,
    required DateTime selectedDay,
    required DateTime focusDay,
    @Default(false) bool isLoading,
    @Default(false) bool error,
    @Default(false) bool success,
  }) = _AppointmentState;
}
