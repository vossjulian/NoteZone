import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/appointment_crud_fragment/appointment_crud_provider.dart';
import 'package:notezone/app/boundary/pages/project_page/fragments/appointment_fragment/appointment_notifier.dart';
import 'package:notezone/app/boundary/widgets/custom_card.dart';
import 'package:notezone/app/domain/entities/appointment_entity.dart';
import 'package:notezone/shared/utils/datetime_formatter.dart';
import 'package:table_calendar/table_calendar.dart';

class AppointmentFragment extends ConsumerWidget {
  const AppointmentFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appointmentNotifierProvider);
    final stateInvoker = ref.read(appointmentNotifierProvider.notifier);
    final crudInvoker = ref.read(appointmentCRUDProvider.notifier);
    Logger logger = Logger();

    List<AppointmentEntity> _getEventsfromDay(DateTime day) {
      List<AppointmentEntity> found = [];

      for (var element in state.appointments) {
        if (isSameDay(element.startDate, day)) {
          found.add(element);
        }
      }

      logger.d(day);
      return found;
    }

    return Consumer(
      builder: (context, ref, child) {
        return Column(
          children: [
            TableCalendar(
              startingDayOfWeek: StartingDayOfWeek.monday,
              locale: "de_DE",
              availableCalendarFormats: const {
                CalendarFormat.month: 'Monat',
                CalendarFormat.twoWeeks: '2 Wochen',
                CalendarFormat.week: 'Wochen'
              },
              calendarFormat: CalendarFormat.month,
              onFormatChanged: (f) {},
              calendarStyle: CalendarStyle(
                  selectedDecoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  selectedTextStyle: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer),
                  todayDecoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    color: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  todayTextStyle: TextStyle(
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer)),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: state.focusDay,
              selectedDayPredicate: (day) {
                return isSameDay(state.selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                stateInvoker.setSelectedDay(selectedDay);
                stateInvoker.setFocusDay(focusedDay);
              },
              onPageChanged: (focusedDay) {
                stateInvoker.setFocusDay(focusedDay);
              },
              eventLoader: (day) {
                return _getEventsfromDay(day);
              },
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: _getEventsfromDay(state.selectedDay).length,
                itemBuilder: (context, index) {
                  List<AppointmentEntity> items =
                      _getEventsfromDay(state.selectedDay);
                  AppointmentEntity appo = items[index];
                  return CustomCard(
                    trailingIcon: Icons.timer,
                    title: items[index].title,
                    onTap: () {},
                    onLongPress: () {
                      crudInvoker.deleteAppointment(items[index].uid);
                    },
                    subtitle:
                        "von ${appo.creatorFirstname} ${appo.creatorLastname}",
                    content:
                        "${DateTimeFormatter.convertTime(appo.startDate)} - ${DateTimeFormatter.convertTime(appo.endDate)}",
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}
