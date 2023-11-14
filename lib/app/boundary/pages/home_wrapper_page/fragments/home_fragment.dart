import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:notezone/app/boundary/pages/home_wrapper_page/fragments/home_notifier.dart';
import 'package:notezone/app/boundary/widgets/custom_card.dart';
import 'package:notezone/app/domain/entities/project_entity.dart';
import 'package:notezone/shared/utils/datetime_formatter.dart';

class HomeFragment extends ConsumerWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeStateInvoker = ref.read(homeNotifierProvider.notifier);
    final homeState = ref.watch(homeNotifierProvider);

    if (homeState.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    List<ProjectEntity> projects = homeState.projects;

    if (projects.isEmpty) {
      return const Center(
        child: Text("Kein Projekt vorhanden"),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        ProjectEntity project = projects[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
          child: CustomCard(
            trailingIcon: Icons.group,
            title: project.title,
            subtitle: DateTimeFormatter.convert(project.createdAt),
            onTap: () {
              homeStateInvoker.selectProject(project);
              context.go("/project");
            },
          ),
        );
      },
    );
  }
}
