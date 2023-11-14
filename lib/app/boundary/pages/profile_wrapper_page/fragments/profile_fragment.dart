import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/profile_wrapper_page/fragments/profile_provider.dart';
import 'package:notezone/app/boundary/widgets/custom_card.dart';
import 'package:notezone/shared/utils/datetime_formatter.dart';

class ProfileFragment extends ConsumerWidget {
  const ProfileFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileProvider);
    final stateInvoker = ref.read(profileProvider.notifier);
    final logger = Logger();
    logger.d(state);
    ref.listen(
      profileProvider,
      (previous, next) {
        if (next.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Fehler beim Ändern"),
            ),
          );
        }
        if (next.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Änderung erfolgreich"),
            ),
          );
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
                initialValue: state.firstname.value,
                keyboardType: TextInputType.name,
                onChanged: (value) => stateInvoker.setFirstname(value),
                validator: (value) =>
                    state.firstname.isValid ? null : state.firstname.error,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  label: Text(
                    "Vorname",
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              TextFormField(
                initialValue: state.lastname.value,
                keyboardType: TextInputType.name,
                onChanged: (value) => stateInvoker.setLastname(value),
                validator: (value) =>
                    state.lastname.isValid ? null : state.lastname.error,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  label: Text(
                    "Lastname",
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              TextFormField(
                readOnly: true,
                initialValue: state.email.value,
                keyboardType: TextInputType.emailAddress,
                onChanged: (email) => stateInvoker.setEmail(email),
                validator: (email) =>
                    state.email.isValid ? null : state.email.error,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                  label: Text(
                    "E-Mail Adresse",
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        ...state.invitations.map(
          (e) => Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
            child: CustomCard(
              trailingIcon: Icons.person_add,
              title: "Einladung - ${e.projectTitle}",
              subtitle: "Vom ${DateTimeFormatter.convert(e.createdAt)}",
              showConfirmButton: true,
              showCancleButton: true,
              onConfirm: () {
                stateInvoker.updateInvitation(e.uid, true, false);
              },
              onCancel: () {
                stateInvoker.updateInvitation(e.uid, false, true);
              },
            ),
          ),
        )
      ],
    );
  }
}
