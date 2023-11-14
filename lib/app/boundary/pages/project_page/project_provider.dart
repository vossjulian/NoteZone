import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_provider.freezed.dart';

enum FragmentState {
  note,
  appointment,
  todo,
}

@freezed
class ProjectPageState with _$ProjectPageState {
  const factory ProjectPageState({
    @Default(FragmentState.note) FragmentState currentFragment,
  }) = _ProjectPageState;

  const ProjectPageState._();
}

final projectNotifierProvider =
    StateNotifierProvider<ProjectProvider, ProjectPageState>((ref) {
  return ProjectProvider();
});

class ProjectProvider extends StateNotifier<ProjectPageState> {
  ProjectProvider() : super(const ProjectPageState());

  void showNoteFragment() {
    state = state.copyWith(currentFragment: FragmentState.note);
  }

  void showAppointmentFragment() {
    state = state.copyWith(currentFragment: FragmentState.appointment);
  }

  void showTodoFragment() {
    state = state.copyWith(currentFragment: FragmentState.todo);
  }
}
