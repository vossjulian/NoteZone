import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/appointment_crud_fragment/appointment_crud_provider.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/note_crud_fragment/note_crud_provider.dart';
import 'package:notezone/app/boundary/pages/home_wrapper_page/fragments/home_state.dart';
import 'package:notezone/app/boundary/pages/member_invite_wrapper_page/fragments/member_invite_notifier.dart';
import 'package:notezone/app/boundary/pages/project_page/fragments/appointment_fragment/appointment_notifier.dart';
import 'package:notezone/app/boundary/pages/project_page/fragments/note_fragment/note_notifier.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/fragments/project_members_fragment/project_members_notifier.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/fragments/project_settings_fragment/project_settings_fragment_notifier.dart';
import 'package:notezone/app/control/project_facade.dart';
import 'package:notezone/app/control/project_manager.dart';
import 'package:notezone/app/domain/entities/project_entity.dart';

final homeNotifierProvider =
    StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(
    projectFacade: ref.watch(projectManagerProvider),
    noteNotifier: ref.watch(noteNotifierProvider.notifier),
    noteCrudNotifier: ref.watch(noteCRUDNotifierProvider.notifier),
    projectMembersNotifier: ref.watch(projectMembersNotifierProvider.notifier),
    projectSettingsFragmentProvider:
        ref.watch(projectSettingsFragmentNotifierProvider.notifier),
    appointmentCrudNotifier: ref.watch(appointmentCRUDProvider.notifier),
    appointmentNotifier: ref.read(appointmentNotifierProvider.notifier),
    memberInviteNotifier: ref.read(memberInviteProvider.notifier),
  ),
);

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier({
    required this.projectFacade,
    required this.noteNotifier,
    required this.noteCrudNotifier,
    required this.projectMembersNotifier,
    required this.projectSettingsFragmentProvider,
    required this.appointmentCrudNotifier,
    required this.appointmentNotifier,
    required this.memberInviteNotifier,
  }) : super(HomeState(isLoading: true)) {
    projectFacade.findAllByProfileUid().listen((projects) {
      state = state.copyWith(
        projects: projects,
        isLoading: false,
      );
    });
  }

  final ProjectFacade projectFacade;
  final NoteNotifier noteNotifier;
  final NoteCRUDNotifier noteCrudNotifier;
  final ProjectMembersNotifier projectMembersNotifier;
  final ProjectSettingsFragmentProvider projectSettingsFragmentProvider;
  final AppointmentCRUDProvider appointmentCrudNotifier;
  final AppointmentNotifier appointmentNotifier;
  final MemberInviteNotifier memberInviteNotifier;

  void selectProject(ProjectEntity selectedProject) {
    noteNotifier.projectSelected(selectedProject.uid);
    noteCrudNotifier.projectSelected(selectedProject.uid);
    projectMembersNotifier.projectSelected(selectedProject.uid);
    projectSettingsFragmentProvider.projectSelected(selectedProject.uid);
    appointmentCrudNotifier.projectSelected(selectedProject.uid);
    appointmentNotifier.projectSelected(selectedProject.uid);
    memberInviteNotifier.projectSelected(
      selectedProject.uid,
      selectedProject.title,
    );

    state = state.copyWith(selectedProject: selectedProject);
  }
}
