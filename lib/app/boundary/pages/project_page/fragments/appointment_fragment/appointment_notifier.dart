import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/appointment_crud_fragment/appointment_crud_provider.dart';
import 'package:notezone/app/boundary/pages/project_page/fragments/appointment_fragment/appointment_state.dart';
import 'package:notezone/app/control/appointment_facade.dart';
import 'package:notezone/app/control/appointment_manager.dart';
import 'package:notezone/app/domain/entities/appointment_entity.dart';

final appointmentNotifierProvider =
    StateNotifierProvider<AppointmentNotifier, AppointmentState>(
  (ref) => AppointmentNotifier(
    appointmentCrudInvoker: ref.read(appointmentCRUDProvider.notifier),
    appointmentFacade: ref.watch(appointmentManagerProvider),
    logger: Logger(),
  ),
);

class AppointmentNotifier extends StateNotifier<AppointmentState> {
  AppointmentNotifier({
    required this.appointmentCrudInvoker,
    required this.appointmentFacade,
    required this.logger,
  }) : super(
          AppointmentState(
            selectedDay: DateTime.now(),
            focusDay: DateTime.now(),
            appointments: [
              AppointmentEntity(
                createdAt: DateTime.now(),
                creatorFirstname: "Julian",
                creatorLastname: "Voss",
                creatorUid: "s5DXZZVediZKvKdD0HYQPG393Yt2",
                startDate: DateTime.now(),
                endDate: DateTime.now(),
                modificatedAt: DateTime.now(),
                title: "Termin 1",
                uid: 'x',
              )
            ],
          ),
        );

  Logger logger;
  final AppointmentCRUDProvider appointmentCrudInvoker;
  final AppointmentFacade appointmentFacade;
  StreamSubscription? streamSubscription;

  void setSelectedDay(DateTime day) {
    state = state.copyWith(selectedDay: day);
    appointmentCrudInvoker.setSelectedDay(day);
  }

  void setFocusDay(DateTime focusDay) {
    state = state.copyWith(focusDay: focusDay);
  }

  void projectSelected(String projectUid) {
    state = state.copyWith(
      appointments: [],
      isLoading: true,
    );
    if (streamSubscription != null) streamSubscription!.cancel();
    streamSubscription = appointmentFacade
        .findAllByProjectUid(projectUid: projectUid)
        .listen((appointments) {
      state = state.copyWith(
        appointments: appointments,
        isLoading: false,
      );
    });
    logger.d(state.appointments);
  }
}
