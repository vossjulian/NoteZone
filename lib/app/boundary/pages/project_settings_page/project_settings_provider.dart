import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_settings_provider.freezed.dart';

enum ProjectSettingsState {
  settings,
  members,
}

@freezed
class ProjectSettingsPageState with _$ProjectSettingsPageState {
  const factory ProjectSettingsPageState({
    @Default(ProjectSettingsState.settings)
        ProjectSettingsState currentFragment,
  }) = _ProjectSettingsPageState;

  const ProjectSettingsPageState._();
}

final projectSettingsNotifierProvider =
    StateNotifierProvider<ProjectSettingsProvider, ProjectSettingsPageState>(
        (ref) {
  return ProjectSettingsProvider();
});

class ProjectSettingsProvider extends StateNotifier<ProjectSettingsPageState> {
  ProjectSettingsProvider() : super(const ProjectSettingsPageState());

  void showProjectSettingsFragment() {
    state = state.copyWith(currentFragment: ProjectSettingsState.settings);
  }

  void showProjectMembersFragment() {
    state = state.copyWith(currentFragment: ProjectSettingsState.members);
  }
}
