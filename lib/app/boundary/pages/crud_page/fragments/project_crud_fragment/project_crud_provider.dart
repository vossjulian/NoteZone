import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/project_crud_fragment/project_crud_state.dart';
import 'package:notezone/app/control/project_facade.dart';
import 'package:notezone/app/control/project_manager.dart';
import 'package:notezone/shared/utils/form_input_data.dart';
import 'package:validators/validators.dart';

final projectCRUDProvider =
    StateNotifierProvider<ProjectCRUDProvider, ProjectCRUDState>(
        (ref) => ProjectCRUDProvider(
              projectFacade: ref.watch(projectManagerProvider),
              logger: Logger(),
            ));

class ProjectCRUDProvider extends StateNotifier<ProjectCRUDState> {
  ProjectCRUDProvider({
    required this.projectFacade,
    required this.logger,
  }) : super(ProjectCRUDState(
          formKey: GlobalKey<FormState>(),
          title: FormInputData(error: "Bitte gültige Beschreibung angeben"),
        ));

  final Logger logger;

  final ProjectFacade projectFacade;

  void setTitle(String title) {
    state = state.copyWith(
      title: state.title.copyWith(
        value: title,
      ),
    );
    validateTitle(title);
  }

  void validateTitle(String value) {
    final isValidTitle = isLength(value, 1);

    state = state.copyWith(
      title: state.title.copyWith(isValid: isValidTitle),
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
    state = ProjectCRUDState(
      formKey: GlobalKey<FormState>(),
      title: FormInputData(error: "Bitte gültige Beschreibung angeben"),
    );
  }

  Future<void> createProject() async {
    if (!state.formKey.currentState!.validate()) return;

    setLoading(true);

    try {
      await projectFacade.create(title: state.title.value);
      setSuccess(true);
    } catch (e) {
      setError(true);
    }
    resetState();

    // Perform login logic here, e.g. call API

    setLoading(false);
  }

  Future<void> editProject() async {
    setLoading(true);

    state.formKey.currentState!.validate();

    // Perform login logic here, e.g. call API
    await Future.delayed(const Duration(seconds: 2));

    setLoading(false);
  }

  Future<void> deleteProject() async {
    setLoading(true);

    // Perform login logic here, e.g. call API
    await Future.delayed(const Duration(seconds: 2));

    setLoading(false);
  }
}
