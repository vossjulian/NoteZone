import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/todo_crud_fragment/todo_crud_provider.dart';

class TodoCRUDFragment extends ConsumerWidget {
  TodoCRUDFragment({super.key});

  final TextEditingController deadlineController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoCRUDProvider);
    final stateInvoker = ref.read(todoCRUDProvider.notifier);
    final logger = Logger();
    logger.d(state);

    deadlineController.text = state.deadline.value;

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
              controller: deadlineController,
              readOnly: true,
              onTap: () async {
                final date = await pickDate();
                if (date == null) return;
                final time = await pickTime();
                if (time == null) return;
                DateTime deadline = DateTime(
                    date.year, date.month, date.day, time.hour, time.minute);
                stateInvoker.setDeadline(deadline.toIso8601String());
              },
              validator: (value) =>
                  state.deadline.isValid ? null : state.deadline.error,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Deadline",
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
