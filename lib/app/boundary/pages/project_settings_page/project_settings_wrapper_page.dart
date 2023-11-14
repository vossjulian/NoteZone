import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/fragments/project_members_fragment/project_members_fragment.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/fragments/project_settings_fragment/project_settings_fragment.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/fragments/project_settings_fragment/project_settings_fragment_notifier.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/project_settings_provider.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/widgets/project_settings_page_nav_bar.dart';

class ProjectSettingsWrapperPage extends ConsumerWidget {
  const ProjectSettingsWrapperPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget body = Container();

    final state = ref.watch(projectSettingsNotifierProvider);
    final projectSettingsInvoker =
        ref.read(projectSettingsFragmentNotifierProvider.notifier);

    switch (state.currentFragment) {
      case ProjectSettingsState.settings:
        body = const ProjectSettingsFragment();
        break;
      case ProjectSettingsState.members:
        body = const ProjectMembersFragment();
        break;
    }

    void onDeletePressed() {
      projectSettingsInvoker.deleteProject();
    }

    void onAddPressed() {
      context.push("/member_invite");
    }

    void onSubmitPressed() {
      projectSettingsInvoker.changeProjectTitle();
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Einstellungen")),
      body: body,
      bottomNavigationBar: ProjectSettingsPageNavBar(
        showAddButton: state.currentFragment == ProjectSettingsState.members,
        showSubmitButton:
            state.currentFragment == ProjectSettingsState.settings,
        showDeleteButton:
            state.currentFragment == ProjectSettingsState.settings,
        onAddPressed: () => onAddPressed(),
        onSettingsTagPressed: () => ref
            .read(projectSettingsNotifierProvider.notifier)
            .showProjectSettingsFragment(),
        onMembersTabPressed: () => ref
            .read(projectSettingsNotifierProvider.notifier)
            .showProjectMembersFragment(),
        onDeletePressed: () => onDeletePressed(),
        onSubmitPressed: () => onSubmitPressed(),
      ),
    );
  }
}
