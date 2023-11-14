import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:notezone/app/boundary/pages/crud_page/crud_provider.dart';
import 'package:notezone/app/boundary/pages/project_page/fragments/note_fragment/note_notifier.dart';
import 'package:notezone/app/boundary/widgets/custom_card.dart';
import 'package:notezone/app/domain/entities/note_entity.dart';
import 'package:notezone/shared/utils/datetime_formatter.dart';

class NoteFragment extends ConsumerWidget {
  const NoteFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noteStateInvoker = ref.read(noteNotifierProvider.notifier);
    final noteState = ref.watch(noteNotifierProvider);
    final crudStateInvoker = ref.read(crudNotifierProvider.notifier);

    if (noteState.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    List<NoteEntity> notes = noteState.notes;

    if (notes.isEmpty) {
      return const Center(
        child: Text("Keine Notiz vorhanden"),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: notes.length,
      itemBuilder: (context, index) {
        NoteEntity note = notes[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
          child: CustomCard(
            trailingIcon: Icons.edit,
            title: note.title,
            subtitle:
                "${DateTimeFormatter.convert(note.createdAt)} von ${note.creatorFirstname} ${note.creatorLastname}",
            content: note.content,
            onTap: () {
              noteStateInvoker.selectNote(note);
              crudStateInvoker.showNoteFragment();
              crudStateInvoker.changeMode(SubmitMode.edit);
              context.push("/crud");
            },
          ),
        );
      },
    );
  }
}
