import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/control/appointment_facade.dart';
import 'package:notezone/app/control/appointment_manager.dart';
import 'package:notezone/shared/utils/form_input_data.dart';
import 'package:validators/validators.dart';

import 'appointment_crud_state.dart';

final appointmentCRUDProvider =
    StateNotifierProvider<AppointmentCRUDProvider, AppointmentCRUDState>(
  (ref) => AppointmentCRUDProvider(
    appointmentFacade: ref.watch(appointmentManagerProvider),
  ),
);

class AppointmentCRUDProvider extends StateNotifier<AppointmentCRUDState> {
  AppointmentCRUDProvider({required this.appointmentFacade})
      : super(
          AppointmentCRUDState(
            formKey: GlobalKey<FormState>(),
            heading: FormInputData(error: "Bitte gültige Überschrift angeben"),
            start: FormInputData(error: "Bitte gültigen Startpunkt angeben"),
            end: FormInputData(error: "Bitte gültigen Endpunkt angeben"),
          ),
        );

  final Logger logger = Logger();

  final AppointmentFacade appointmentFacade;

  void setHeading(String heading) {
    state = state.copyWith(
      heading: state.heading.copyWith(
        value: heading,
      ),
    );
    validateHeading(heading);
  }

  void setStart(String start) {
    state = state.copyWith(
      start: state.start.copyWith(
        value: start,
      ),
    );
  }

  void setEnd(String end) {
    state = state.copyWith(
      end: state.end.copyWith(
        value: end,
      ),
    );
  }

  void projectSelected(String projectUid) {
    state = state.copyWith(projectUid: projectUid);
  }

  void setSelectedDay(DateTime day) {
    state = state.copyWith(selectedDay: day);
  }

  void validateHeading(String value) {
    final isValidDescription = isLength(value, 1);

    state = state.copyWith(
      heading: state.heading.copyWith(isValid: isValidDescription),
    );
  }

  void setLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  void setError(bool hasError) {
    state = state.copyWith(error: hasError);
  }

  void setSuccess(bool success) {
    state = state.copyWith(success: success);
  }

  void resetState() {
    state = AppointmentCRUDState(
      formKey: GlobalKey<FormState>(),
      heading: FormInputData(error: "Bitte gültige Überschrift angeben"),
      start: FormInputData(error: "Bitte gültigen Startpunkt angeben"),
      end: FormInputData(error: "Bitte gültigen Endpunkt angeben"),
      isLoading: false,
      success: false,
      error: false,
    );
  }

  Future<void> createAppointment() async {
    if (!state.formKey.currentState!.validate()) return;
    setLoading(true);
    if (state.selectedDay == null) {
      setSelectedDay(DateTime.now());
    }
    DateTime startTime = DateTime.parse(state.start.value);
    DateTime endTime = DateTime.parse(state.end.value);
    DateTime start = DateTime(
      state.selectedDay!.year,
      state.selectedDay!.month,
      state.selectedDay!.day,
    ).add(
      Duration(hours: startTime.hour, minutes: startTime.minute),
    );
    DateTime end = DateTime(
      state.selectedDay!.year,
      state.selectedDay!.month,
      state.selectedDay!.day,
    ).add(
      Duration(hours: endTime.hour, minutes: endTime.minute),
    );
    logger.d(start);
    logger.d(end);

    try {
      await appointmentFacade.create(
        projectUid: state.projectUid,
        title: state.heading.value,
        start: start,
        end: end,
      );
      setSuccess(true);
    } catch (e) {
      setError(true);
    }

    setLoading(false);

    resetState();
  }

  Future<void> editAppointment() async {
    setLoading(true);

    state.formKey.currentState!.validate();

    // Perform login logic here, e.g. call API
    await Future.delayed(const Duration(seconds: 2));

    setLoading(false);
  }

  Future<void> deleteAppointment(String appointmentId) async {
    setLoading(true);

    logger.d("${state.projectUid} - $appointmentId");
    try {
      await appointmentFacade.deleteByUid(
        projectUid: state.projectUid,
        appointmentUid: appointmentId,
      );
      setSuccess(true);
    } catch (e) {
      setError(true);
    }

    setLoading(false);

    setLoading(true);
  }
}
