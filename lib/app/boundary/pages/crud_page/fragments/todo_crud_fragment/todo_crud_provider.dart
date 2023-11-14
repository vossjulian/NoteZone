import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/shared/utils/form_input_data.dart';
import 'package:validators/validators.dart';

import 'todo_crud_state.dart';

final todoCRUDProvider = StateNotifierProvider<TodoCRUDProvider, TodoCRUDState>(
    (ref) => TodoCRUDProvider());

class TodoCRUDProvider extends StateNotifier<TodoCRUDState> {
  TodoCRUDProvider()
      : super(TodoCRUDState(
          formKey: GlobalKey<FormState>(),
          heading: FormInputData(error: "Bitte gültige Überschrift angeben"),
          deadline: FormInputData(error: "Bitte gültige Deadline angeben"),
        ));

  final Logger logger = Logger();

  void setHeading(String heading) {
    state = state.copyWith(
      heading: state.heading.copyWith(
        value: heading,
      ),
    );
    validateHeading(heading);
  }

  void setDeadline(String value) {
    state = state.copyWith(
      deadline: state.deadline.copyWith(
        value: value,
      ),
    );
    validateDeadline(value);
  }

  void validateHeading(String value) {
    final isValidDescription = isLength(value, 1);

    state = state.copyWith(
      heading: state.heading.copyWith(isValid: isValidDescription),
    );
  }

  void validateDeadline(String value) {
    final isValidStart = DateTime.parse(value).isAfter(DateTime.now());

    state = state.copyWith(
      deadline: state.deadline.copyWith(isValid: isValidStart),
    );
  }

  void setLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  Future<void> createTodo() async {
    setLoading(true);

    state.formKey.currentState!.validate();

    // Perform login logic here, e.g. call API
    await Future.delayed(const Duration(seconds: 2));

    setLoading(false);
  }

  Future<void> editTodo() async {
    setLoading(true);

    state.formKey.currentState!.validate();

    // Perform login logic here, e.g. call API
    await Future.delayed(const Duration(seconds: 2));

    setLoading(false);
  }

  Future<void> deleteTodo() async {
    setLoading(true);

    // Perform login logic here, e.g. call API
    await Future.delayed(const Duration(seconds: 2));

    setLoading(false);
  }
}
