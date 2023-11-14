import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/fragments/sign_in_fragment/sign_in_provider.dart';

class SignInFragment extends ConsumerWidget {
  const SignInFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signInProvider);
    final stateInvoker = ref.read(signInProvider.notifier);

    ref.listen(signInProvider, (previous, next) {
      if (next.error.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.error),
          ),
        );
      }
    });

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
              const SizedBox(
                height: 24.0,
              ),
              TextFormField(
                obscureText: true,
                initialValue: state.password.value,
                onChanged: (password) => stateInvoker.setPassword(password),
                validator: (password) =>
                    state.password.isValid ? null : state.password.error,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  label: Text(
                    "Passwort",
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
