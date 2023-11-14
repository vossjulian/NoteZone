import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/appointment_crud_fragment/appointment_crud_provider.dart';

class AppointmentCRUDFragment extends ConsumerWidget {
  AppointmentCRUDFragment({super.key});

  final TextEditingController startController = TextEditingController();
  final TextEditingController endController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appointmentCRUDProvider);
    final stateInvoker = ref.read(appointmentCRUDProvider.notifier);
    final logger = Logger();
    logger.d(state);

    ref.listen(appointmentCRUDProvider, (previous, next) {
      if (next.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('error'),
          ),
        );
      }
      if (next.success) {
        context.pop();
      }
    });

    startController.text = state.start.value;
    endController.text = state.end.value;

    Future<DateTime?> pickDate() => showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );

    Future<TimeOfDay?> pickTime() => showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );

    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Form(
          key: state.formKey,
          child: Column(children: [
            TextFormField(
              initialValue: state.heading.value,
              keyboardType: TextInputType.text,
              onChanged: (heading) => stateInvoker.setHeading(heading),
              validator: (heading) =>
                  state.heading.isValid ? null : state.heading.error,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Überschrift",
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextFormField(
              controller: startController,
              readOnly: true,
              onTap: () async {
                final time = await pickTime();
                if (time == null) return;
                final start = DateTime(
                    state.selectedDay!.year,
                    state.selectedDay!.month,
                    state.selectedDay!.day,
                    time.hour,
                    time.minute);
                stateInvoker.setStart(start.toIso8601String());
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Von",
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextFormField(
              readOnly: true,
              controller: endController,
              onTap: () async {
                final time = await pickTime();
                if (time == null) return;
                final end = DateTime(
                    state.selectedDay!.year,
                    state.selectedDay!.month,
                    state.selectedDay!.day,
                    time.hour,
                    time.minute);
                stateInvoker.setEnd(end.toIso8601String());
              },
              onChanged: (value) => stateInvoker.setEnd(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Bis",
                ),
              ),
            ),
          ]),
        )
      ],
    );
  }
}
