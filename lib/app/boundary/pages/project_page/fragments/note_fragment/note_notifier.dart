import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/note_crud_fragment/note_crud_provider.dart';
import 'package:notezone/app/control/note_facade.dart';
import 'package:notezone/app/control/note_manager.dart';
import 'package:notezone/app/domain/entities/note_entity.dart';

import 'note_state.dart';

final noteNotifierProvider =
    StateNotifierProvider.autoDispose<NoteNotifier, NoteState>(
  (ref) => NoteNotifier(
    noteFacade: ref.watch(noteManagerProvider),
    noteCrudNotifier: ref.watch(noteCRUDNotifierProvider.notifier),
  ),
);

class NoteNotifier extends StateNotifier<NoteState> {
  NoteNotifier({
    required this.noteFacade,
    required this.noteCrudNotifier,
  }) : super(NoteState(isLoading: true));

  final NoteFacade noteFacade;
  StreamSubscription? streamSubscription;

  void projectSelected(String projectUid) {
    Logger().d("ABC");
    state = state.copyWith(
      notes: [],
      isLoading: true,
    );
    if (streamSubscription != null) streamSubscription!.cancel();
    streamSubscription =
        noteFacade.findAllByProjectUid(projectUid: projectUid).listen((notes) {
      state = state.copyWith(
        notes: notes,
        isLoading: false,
      );
    });
  }

  final NoteCRUDNotifier noteCrudNotifier;

  void selectNote(NoteEntity selected) {
    noteCrudNotifier.noteSelected(selected);
    state = state.copyWith(selectedNote: selected);
  }
}
