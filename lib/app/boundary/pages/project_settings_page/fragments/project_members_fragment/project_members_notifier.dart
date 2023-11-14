import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/fragments/project_members_fragment/project_members_state.dart';
import 'package:notezone/app/control/profile_facade.dart';
import 'package:notezone/app/control/profile_manager.dart';

final projectMembersNotifierProvider =
    StateNotifierProvider<ProjectMembersNotifier, ProjectMembersState>(
  (ref) => ProjectMembersNotifier(
    profileFacade: ref.watch(profileManagerProvider),
  ),
);

class ProjectMembersNotifier extends StateNotifier<ProjectMembersState> {
  ProjectMembersNotifier({
    required this.profileFacade,
  }) : super(ProjectMembersState(isLoading: true));

  final ProfileFacade profileFacade;
  StreamSubscription? streamSubscription;

  void projectSelected(String projectUid) {
    state = state.copyWith(
      members: [],
      isLoading: true,
    );
    if (streamSubscription != null) streamSubscription!.cancel();
    streamSubscription = profileFacade
        .findAllByProjectUid(projectUid: projectUid)
        .listen((members) {
      state = state.copyWith(
        members: members,
        isLoading: false,
      );
    });
  }
}
