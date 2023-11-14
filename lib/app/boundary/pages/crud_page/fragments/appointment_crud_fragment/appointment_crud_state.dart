import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/shared/utils/form_input_data.dart';

part 'appointment_crud_state.freezed.dart';

@freezed
class AppointmentCRUDState with _$AppointmentCRUDState {
  factory AppointmentCRUDState({
    required GlobalKey<FormState> formKey,
    required FormInputData heading,
    required FormInputData start,
    required FormInputData end,
    DateTime? selectedDay,
    @Default("") String projectUid,
    @Default(false) bool isLoading,
    @Default(false) bool success,
    @Default(false) bool error,
  }) = _AppointmentCRUDState;
}
