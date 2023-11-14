import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:notezone/app/boundary/pages/crud_page/crud_provider.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/note_crud_fragment/note_crud_provider.dart';
import 'package:notezone/app/boundary/pages/home_wrapper_page/fragments/home_notifier.dart';
import 'package:notezone/app/boundary/pages/project_page/fragments/appointment_fragment/appointment_fragment.dart';
import 'package:notezone/app/boundary/pages/project_page/fragments/todo_fragment/todo_fragment.dart';
import 'package:notezone/app/boundary/pages/project_page/project_provider.dart';
import 'package:notezone/app/boundary/pages/project_page/widgets/project_page_nav_bar.dart';

import 'fragments/note_fragment/note_fragment.dart';

class ProjectWrapperPage extends ConsumerWidget {
  const ProjectWrapperPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget body = Container();

    final state = ref.watch(projectNotifierProvider);
    final homeState = ref.watch(homeNotifierProvider);
    final crudStateInvoker = ref.watch(crudNotifierProvider.notifier);
    final noteCrudStateInvoker = ref.read(noteCRUDNotifierProvider.notifier);
    final projectStateInvoker = ref.read(projectNotifierProvider.notifier);

    switch (state.currentFragment) {
      case FragmentState.note:
        body = const NoteFragment();
        break;
      case FragmentState.appointment:
        body = const AppointmentFragment();
        break;
      case FragmentState.todo:
        body = const TodoFragment();
        break;
    }

    void submit() {
      switch (state.currentFragment) {
        case FragmentState.note:
          noteCrudStateInvoker.resetState();
          crudStateInvoker.changeMode(SubmitMode.create);
          crudStateInvoker.showNoteFragment();
          break;
        case FragmentState.appointment:
          crudStateInvoker.showAppointmentFragment();
          break;
        case FragmentState.todo:
          crudStateInvoker.showTodoFragment();
          break;
      }
      context.push("/crud");
    }

    void openButtonPressed() {
      context.push("/project_settings");
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(homeState.selectedProject!.title),
        actions: [
          IconButton(
            onPressed: () => openButtonPressed(),
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: body,
      bottomNavigationBar: ProjectPageNavBar(
        onNoteTabPressed: () => projectStateInvoker.showNoteFragment(),
        onAppointmentTabPressed: () =>
            projectStateInvoker.showAppointmentFragment(),
        onTodoTabPressed: () => projectStateInvoker.showTodoFragment(),
        onSubmitPressed: () => submit(),
      ),
    );
  }
}
