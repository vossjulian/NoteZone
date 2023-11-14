import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/project_page/fragments/todo_fragment/todo_notifier.dart';
import 'package:notezone/app/boundary/widgets/custom_card.dart';
import 'package:notezone/app/domain/entities/todo_entity.dart';
import 'package:notezone/shared/utils/datetime_formatter.dart';

class TodoFragment extends ConsumerWidget {
  const TodoFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoStateInvoker = ref.read(todoNotifierProvider.notifier);
    final todoState = ref.watch(todoNotifierProvider);

    if (todoState.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    List<TodoEntity> todos = todoState.todos;

    if (todos.isEmpty) {
      return const Center(
        child: Text("Keine Notiz vorhanden"),
      );
    }
    return Consumer(
      builder: (context, ref, child) {
        return ListView.builder(
          itemCount: todos.length,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            TodoEntity todo = todos[index];
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
              child: CustomCard(
                title: todo.title,
                subtitle:
                    "Deadline: ${DateTimeFormatter.convert(todo.deadlineAt)}",
                showLeadingCheckbox: true,
                isChecked: todo.isDone,
                onTap: () {
                  todoStateInvoker.setSelectedTodo(todo);
                },
              ),
            );
          },
        );
      },
    );
  }
}
