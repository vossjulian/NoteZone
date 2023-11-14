import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/shared/utils/form_input_data.dart';

part 'todo_crud_state.freezed.dart';

@freezed
class TodoCRUDState with _$TodoCRUDState {
  factory TodoCRUDState({
    required GlobalKey<FormState> formKey,
    required FormInputData heading,
    required FormInputData deadline,
    @Default(false) bool isLoading,
  }) = _TodoCRUDState;
}
