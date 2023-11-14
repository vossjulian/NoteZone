import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/crud_page/fragments/note_crud_fragment/note_crud_provider.dart';

class NoteCRUDFragment extends ConsumerWidget {
  const NoteCRUDFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(noteCRUDNotifierProvider);
    final stateInvoker = ref.read(noteCRUDNotifierProvider.notifier);
    final logger = Logger();
    logger.d(state);
    ref.listen(
      noteCRUDNotifierProvider,
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

    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Form(
          key: state.formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: state.noteEntity == null
                    ? state.title.value
                    : state.noteEntity!.title,
                keyboardType: TextInputType.text,
                onChanged: (title) => stateInvoker.setTitle(title),
                validator: (title) =>
                    state.title.isValid ? null : state.title.error,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    "Überschrift",
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                maxLines: null,
                initialValue: state.noteEntity == null
                    ? state.content.value
                    : state.noteEntity!.content,
                keyboardType: TextInputType.text,
                onChanged: (content) => stateInvoker.setContent(content),
                validator: (content) =>
                    state.content.isValid ? null : state.content.error,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    "Notizen Text",
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
