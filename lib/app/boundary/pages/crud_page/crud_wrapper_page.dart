import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/crud_page/crud_provider.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/appointment_crud_fragment/appointment_crud_fragment.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/appointment_crud_fragment/appointment_crud_provider.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/note_crud_fragment/note_crud_fragment.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/note_crud_fragment/note_crud_provider.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/project_crud_fragment/project_crud_fragment.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/project_crud_fragment/project_crud_provider.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/todo_crud_fragment/todo_crud_fragment.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/todo_crud_fragment/todo_crud_provider.dart';
import 'package:notezone/app/boundary/pages/crud_page/widgets/crud_page_nav_bar.dart';
import 'package:notezone/app/boundary/pages/home_wrapper_page/fragments/home_notifier.dart';

class CRUDWrapperPage extends ConsumerWidget {
  const CRUDWrapperPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget body = Container();

    final state = ref.watch(crudNotifierProvider);
    final projectCRUDInvoker = ref.read(projectCRUDProvider.notifier);
    final noteCRUDInvoker = ref.read(noteCRUDNotifierProvider.notifier);
    final appointmentCRUDinvoker = ref.read(appointmentCRUDProvider.notifier);
    final todoCRUDinvoker = ref.read(todoCRUDProvider.notifier);
    final homeState = ref.watch(homeNotifierProvider);

    switch (state.currentFragment) {
      case CRUDState.appointment:
        body = AppointmentCRUDFragment();
        break;
      case CRUDState.note:
        body = const NoteCRUDFragment();
        break;
      case CRUDState.project:
        body = const ProjectCRUDFragment();
        break;
      case CRUDState.todo:
        body = TodoCRUDFragment();
        break;
    }

    void submit() {
      if (state.currentFragment == CRUDState.project) {
        projectCRUDInvoker.createProject();
      } else if (state.currentFragment == CRUDState.note) {
        noteCRUDInvoker.createNote();
      } else if (state.currentFragment == CRUDState.appointment) {
        appointmentCRUDinvoker.createAppointment();
      } else if (state.currentFragment == CRUDState.todo) {
        todoCRUDinvoker.createTodo();
      }
    }

    void edit() {
      if (state.currentFragment == CRUDState.project) {
        projectCRUDInvoker.editProject();
      } else if (state.currentFragment == CRUDState.note) {
        noteCRUDInvoker.updateNote();
      } else if (state.currentFragment == CRUDState.appointment) {
        appointmentCRUDinvoker.createAppointment();
      } else if (state.currentFragment == CRUDState.todo) {
        todoCRUDinvoker.editTodo();
      }
    }

    void delete() {
      if (state.currentFragment == CRUDState.project) {
        projectCRUDInvoker.deleteProject();
      } else if (state.currentFragment == CRUDState.note) {
        noteCRUDInvoker.deleteNote();
      } else if (state.currentFragment == CRUDState.appointment) {
        // appointmentCRUDinvoker.deleteAppointment();
      } else if (state.currentFragment == CRUDState.todo) {
        todoCRUDinvoker.deleteTodo();
      }
    }

    String _getTitle() {
      if (state.currentFragment == CRUDState.project) {
        return "Projekt erstellen";
      }
      if (state.currentFragment == CRUDState.appointment) {
        return "Erinnerung erstellen";
      }
      if (state.currentFragment == CRUDState.note) {
        return "Notiz erstellen";
      }
      if (state.currentFragment == CRUDState.todo) {
        return "Todo erstellen";
      }
      if (homeState.selectedProject == null) {
        return "Projekt";
      } else {
        return homeState.selectedProject!.title;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getTitle(),
        ),
      ),
      body: body,
      bottomNavigationBar: CRUDPageNavBar(
        showDeleteButton: state.mode == SubmitMode.edit ? true : false,
        onDeletePressed: () => delete(),
        onSubmitPressed: () {
          switch (state.mode) {
            case SubmitMode.create:
              submit();
              break;
            case SubmitMode.edit:
              edit();
              break;
          }
        },
      ),
    );
  }
}
