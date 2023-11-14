import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/fragments/project_settings_fragment/project_settings_fragment_state.dart';
import 'package:notezone/app/control/project_facade.dart';
import 'package:notezone/app/control/project_manager.dart';
import 'package:notezone/shared/utils/form_input_data.dart';
import 'package:validators/validators.dart';

final projectSettingsFragmentNotifierProvider = StateNotifierProvider<
    ProjectSettingsFragmentProvider, ProjectSettingsFragmentState>(
  (ref) => ProjectSettingsFragmentProvider(
      projectFacade: ref.watch(projectManagerProvider)),
);

class ProjectSettingsFragmentProvider
    extends StateNotifier<ProjectSettingsFragmentState> {
  ProjectSettingsFragmentProvider({required this.projectFacade})
      : super(
          ProjectSettingsFragmentState(
            formKey: GlobalKey<FormState>(),
            title: FormInputData(error: "Bitte gültigen Titel angeben"),
          ),
        );

  final ProjectFacade projectFacade;
  StreamSubscription? streamSubscription;

  void projectSelected(String projectUid) {
    state = state.copyWith(
      isLoading: true,
    );
    if (streamSubscription != null) streamSubscription!.cancel();
    streamSubscription = projectFacade.findByUid(projectUid: projectUid).listen(
      (project) {
        state = state.copyWith(
          currentProject: project,
          isLoading: false,
        );
        setTitle(project.title);
      },
    );
  }

  void setTitle(String title) {
    state = state.copyWith(
      title: state.title.copyWith(value: title),
    );
    validateTitle(title);
  }

  void validateTitle(String title) {
    final isTitleValid = isLength(title.trim(), 2);

    state = state.copyWith(
      title: state.title.copyWith(isValid: isTitleValid),
    );
  }

  void setLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  void setSuccess(bool success) {
    state = state.copyWith(success: success);
  }

  void setError(bool error) {
    state = state.copyWith(error: error);
  }

  void resetState() {
    state = state.copyWith(
      error: false,
      success: false,
    );
  }

  Future<void> changeProjectTitle() async {
    if (!state.formKey.currentState!.validate()) return;
    if (!state.formKey.currentState!.validate()) return;
    setLoading(true);
    try {
      await projectFacade.update(
        projectUid: state.currentProject!.uid,
        title: state.title.value,
      );
      setSuccess(true);
    } catch (e) {
      setError(true);
    }

    resetState();
  }

  Future<void> deleteProject() async {
    setLoading(true);
    try {
      await projectFacade.deleteByUid(projectUid: state.currentProject!.uid);
      setSuccess(true);
    } catch (e) {
      setError(true);
    }
    resetState();
  }
}
