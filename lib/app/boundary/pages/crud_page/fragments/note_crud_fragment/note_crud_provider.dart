import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/note_crud_fragment/note_crud_state.dart';
import 'package:notezone/app/control/note_facade.dart';
import 'package:notezone/app/control/note_manager.dart';
import 'package:notezone/app/domain/entities/note_entity.dart';
import 'package:notezone/shared/utils/form_input_data.dart';
import 'package:validators/validators.dart';

final noteCRUDNotifierProvider =
    StateNotifierProvider<NoteCRUDNotifier, NoteCRUDState>(
        (ref) => NoteCRUDNotifier(
              noteFacade: ref.watch(noteManagerProvider),
              logger: Logger(),
            ));

class NoteCRUDNotifier extends StateNotifier<NoteCRUDState> {
  NoteCRUDNotifier({
    required this.noteFacade,
    required this.logger,
  }) : super(NoteCRUDState(
          formKey: GlobalKey<FormState>(),
          title: FormInputData(error: "Bitte gültige Überschrift angeben"),
          content: FormInputData(error: "Bitte gültigen Inhalt angeben"),
        ));

  final Logger logger;

  final NoteFacade noteFacade;
  StreamSubscription? streamSubscription;

  void projectSelected(String projectUid) {
    state = state.copyWith(projectUid: projectUid);
  }

  void noteSelected(NoteEntity note) {
    state = state.copyWith(noteEntity: note);
    setTitle(note.title);
    setContent(note.content);
  }

  void setTitle(String title) {
    state = state.copyWith(
      title: state.title.copyWith(
        value: title,
      ),
    );
    validateTitle(title);
  }

  void setContent(String content) {
    state = state.copyWith(
      content: state.content.copyWith(
        value: content,
      ),
    );
    validateContent(content);
  }

  void validateTitle(String value) {
    final isValidTitle = isLength(value, 1);

    state = state.copyWith(
      title: state.title.copyWith(isValid: isValidTitle),
    );
  }

  void validateContent(String value) {
    final isValidContent = isLength(value, 1);

    state = state.copyWith(
      content: state.content.copyWith(isValid: isValidContent),
    );
  }

  void setLoading(bool isLoading) {
    state = state.copyWith(loading: isLoading);
  }

  void setError(bool hasError) {
    state = state.copyWith(error: hasError);
  }

  void setSuccess(bool success) {
    state = state.copyWith(success: success);
  }

  void resetState() {
    state = NoteCRUDState(
      formKey: GlobalKey<FormState>(),
      title: FormInputData(error: "Bitte gültige Überschrift angeben"),
      content: FormInputData(error: "Bitte gültigen Inhalt angeben"),
      projectUid: state.projectUid,
    );
  }

  Future<void> createNote() async {
    if (!state.formKey.currentState!.validate()) return;

    setLoading(true);

    try {
      await noteFacade.create(
        title: state.title.value,
        content: state.content.value,
        projectUid: state.projectUid,
      );
      setSuccess(true);
    } catch (e) {
      setError(true);
    }

    resetState();

    setLoading(false);
  }

  Future<void> updateNote() async {
    if (!state.formKey.currentState!.validate()) return;

    setLoading(true);

    try {
      await noteFacade.update(
        title: state.title.value,
        content: state.content.value,
        projectUid: state.projectUid,
        noteUid: state.noteEntity!.uid,
      );
      setSuccess(true);
    } catch (e) {
      setError(true);
    }

    resetState();

    setLoading(false);
  }

  Future<void> deleteNote() async {
    if (!state.formKey.currentState!.validate()) return;

    setLoading(true);

    try {
      await noteFacade.deleteByUid(
        projectUid: state.projectUid,
        noteUid: state.noteEntity!.uid,
      );
      setSuccess(true);
    } catch (e) {
      setError(true);
    }

    resetState();

    setLoading(false);
  }
}
