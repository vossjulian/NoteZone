import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/fragments/project_settings_fragment/project_settings_fragment_notifier.dart';

class ProjectSettingsFragment extends ConsumerWidget {
  const ProjectSettingsFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(projectSettingsFragmentNotifierProvider);
    final stateInvoker =
        ref.read(projectSettingsFragmentNotifierProvider.notifier);

    ref.listen(
      projectSettingsFragmentNotifierProvider,
      (previous, next) {
        if (next.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Fehler"),
            ),
          );
        }
        if (next.success) {
          if (context.canPop()) {
            context.pop();
          }
          if (context.canPop()) {
            context.pop();
          }
        }
      },
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: state.formKey,
        child: TextFormField(
          initialValue: state.currentProject!.title,
          keyboardType: TextInputType.text,
          onChanged: (value) => stateInvoker.setTitle(value),
          validator: (value) => state.title.isValid ? null : state.title.error,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            label: Text(
              "Titel",
            ),
          ),
        ),
      ),
    );
  }
}
