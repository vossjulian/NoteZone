import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/shared/utils/form_input_data.dart';

part 'project_crud_state.freezed.dart';

@freezed
class ProjectCRUDState with _$ProjectCRUDState {
  factory ProjectCRUDState({
    required GlobalKey<FormState> formKey,
    required FormInputData title,
    @Default(false) bool error,
    @Default(false) bool success,
    @Default(false) bool loading,
  }) = _ProjectCRUDState;
}
