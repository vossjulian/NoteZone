import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/fragments/project_members_fragment/project_members_notifier.dart';
import 'package:notezone/app/boundary/widgets/custom_card.dart';
import 'package:notezone/app/domain/entities/profile_entity.dart';

class ProjectMembersFragment extends ConsumerWidget {
  const ProjectMembersFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final membersInvoker = ref.read(projectMembersNotifierProvider.notifier);
    final membersState = ref.watch(projectMembersNotifierProvider);

    if (membersState.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    List<ProfileEntity> members = membersState.members;

    if (members.isEmpty) {
      return const Center(
        child: Text("Kein Mitglied vorhanden"),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: members.length,
      itemBuilder: (context, index) {
        ProfileEntity member = members[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
          child: CustomCard(
            trailingIcon: Icons.person,
            title: "${member.firstname} ${member.lastname}",
            subtitle: "Mitglied",
            onTap: () {
              //noteStateInvoker.selectNote(note);
              //context.go("/project");
            },
          ),
        );
      },
    );
  }
}
