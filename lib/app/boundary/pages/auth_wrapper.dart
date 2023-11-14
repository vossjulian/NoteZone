import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/auth_state_notifier.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/auth_wrapper_page.dart';
import 'package:notezone/app/boundary/pages/home_wrapper_page/home_wrapper_page.dart';

class AuthWrapper extends ConsumerWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateNotifierProvider.notifier);

    return StreamBuilder(
      stream: authState.onUserChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (snapshot.error != null) {
          return const Scaffold(
            body: Center(
              child: Text("Error"),
            ),
          );
        }

        if (snapshot.data!.isAuthenticated) {
          return const HomeWrapperPage();
        } else {
          return const AuthWrapperPage();
        }
      },
    );
  }
}
