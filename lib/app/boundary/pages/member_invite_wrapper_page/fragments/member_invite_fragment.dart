import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:notezone/app/boundary/pages/member_invite_wrapper_page/fragments/member_invite_notifier.dart';

class MemberInviteFragment extends ConsumerWidget {
  const MemberInviteFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(memberInviteProvider);
    final stateInvoker = ref.read(memberInviteProvider.notifier);

    ref.listen(
      memberInviteProvider,
      (previous, next) {
        if (next.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Error"),
            ),
          );
        }
        if (next.success) {
          if (context.canPop()) context.pop();
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
      ],
    );
  }
}
