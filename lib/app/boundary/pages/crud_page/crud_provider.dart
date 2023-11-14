import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crud_provider.freezed.dart';

enum CRUDState {
  project,
  note,
  appointment,
  todo,
}

enum SubmitMode {
  edit,
  create,
}

@freezed
class CRUDPageState with _$CRUDPageState {
  const factory CRUDPageState({
    @Default(CRUDState.todo) CRUDState currentFragment,
    @Default(SubmitMode.create) SubmitMode mode,
  }) = _CRUDPageState;

  const CRUDPageState._();
}

final crudNotifierProvider =
    StateNotifierProvider<CRUDProvider, CRUDPageState>((ref) {
  return CRUDProvider();
});

class CRUDProvider extends StateNotifier<CRUDPageState> {
  CRUDProvider() : super(const CRUDPageState());

  void showProjectFragment() {
    state = state.copyWith(currentFragment: CRUDState.project);
  }

  void showNoteFragment() {
    state = state.copyWith(currentFragment: CRUDState.note);
  }

  void showAppointmentFragment() {
    state = state.copyWith(currentFragment: CRUDState.appointment);
  }

  void showTodoFragment() {
    state = state.copyWith(currentFragment: CRUDState.todo);
  }

  void changeMode(SubmitMode mode) {
    state = state.copyWith(mode: mode);
  }
}
