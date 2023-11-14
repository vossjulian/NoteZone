import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/project_page/fragments/todo_fragment/todo_state.dart';
import 'package:notezone/app/domain/entities/todo_entity.dart';

final todoNotifierProvider =
    StateNotifierProvider.autoDispose<TodoNotifier, TodoState>(
  (ref) => TodoNotifier(),
);

class TodoNotifier extends StateNotifier<TodoState> {
  TodoNotifier()
      : super(TodoState(todos: [
          TodoEntity(
            uid: "x",
            title: "Todo 1",
            isDone: false,
            deadlineAt: DateTime.now(),
            createdAt: DateTime.now(),
            modificatedAt: DateTime.now(),
          )
        ]));

  void setSelectedTodo(TodoEntity todo) {
    state = state.copyWith(selectedTodo: todo);
  }
}
