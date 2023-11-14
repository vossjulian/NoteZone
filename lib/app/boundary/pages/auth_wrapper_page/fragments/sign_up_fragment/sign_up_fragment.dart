import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/fragments/sign_up_fragment/sign_up_provider.dart';

class SignUpFragment extends ConsumerWidget {
  const SignUpFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signUpProvider);
    final stateInvoker = ref.read(signUpProvider.notifier);

    ref.listen(signUpProvider, (previous, next) {
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
                initialValue: state.firstname.value,
                keyboardType: TextInputType.name,
                onChanged: (value) => stateInvoker.setFirstname(value),
                validator: (value) =>
                    state.firstname.isValid ? null : state.firstname.error,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  label: Text(
                    "Vorname*",
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
                    "Nachname*",
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
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
                    "E-Mail Adresse*",
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
                    "Passwort*",
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              TextFormField(
                obscureText: true,
                initialValue: state.confirmPassword.value,
                onChanged: (password) =>
                    stateInvoker.setConfirmPassword(password),
                validator: (password) => state.confirmPassword.isValid
                    ? null
                    : state.confirmPassword.error,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  label: Text(
                    "Passwort wiederholen*",
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
