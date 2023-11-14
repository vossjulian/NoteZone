import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/project_crud_fragment/project_crud_provider.dart';

class ProjectCRUDFragment extends ConsumerWidget {
  const ProjectCRUDFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(projectCRUDProvider);
    final stateInvoker = ref.read(projectCRUDProvider.notifier);
    ref.listen(
      projectCRUDProvider,
      (previous, next) {
        if (next.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Error"),
            ),
          );
        }
        if (next.success) {
          context.pop();
        }
      },
    );

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Form(
          key: state.formKey,
          child: TextFormField(
            initialValue: state.title.value,
            keyboardType: TextInputType.text,
            onChanged: (value) => stateInvoker.setTitle(value),
            validator: (value) =>
                state.title.isValid ? null : state.title.error,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.draw),
              border: OutlineInputBorder(),
              label: Text(
                "Bezeichnung",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
