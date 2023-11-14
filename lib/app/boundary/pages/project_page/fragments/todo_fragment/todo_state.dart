import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/todo_entity.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  factory TodoState({
    @Default([]) List<TodoEntity> todos,
    @Default(null) TodoEntity? selectedTodo,
    @Default(false) bool isLoading,
    @Default(false) bool error,
    @Default(false) bool success,
  }) = _TodoState;
}
