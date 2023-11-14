import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/note_entity.dart';
import 'package:notezone/shared/utils/form_input_data.dart';

part 'note_crud_state.freezed.dart';

@freezed
class NoteCRUDState with _$NoteCRUDState {
  factory NoteCRUDState({
    required GlobalKey<FormState> formKey,
    required FormInputData title,
    required FormInputData content,
    @Default(null) NoteEntity? noteEntity,
    @Default("") String projectUid,
    @Default(false) bool error,
    @Default(false) bool success,
    @Default(false) bool loading,
  }) = _NoteCRUDState;
}
