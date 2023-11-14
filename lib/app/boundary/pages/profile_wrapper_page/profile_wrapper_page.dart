import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:notezone/app/boundary/pages/profile_wrapper_page/fragments/profile_fragment.dart';
import 'package:notezone/app/boundary/pages/profile_wrapper_page/fragments/profile_provider.dart';
import 'package:notezone/app/boundary/pages/profile_wrapper_page/profile_provider.dart';

import 'widgets/profile_page_nav_bar.dart';

class ProfileWrapperPage extends ConsumerWidget {
  const ProfileWrapperPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget body = Container();

    final state = ref.watch(profileNotifierProvider);
    final stateInvoker = ref.read(profileProvider.notifier);

    switch (state.currentFragment) {
      case ProfileState.profile:
        body = const ProfileFragment();
        break;
    }

    Future<void> submit() async {
      await stateInvoker.editProfile();
    }

    void signOut() {
      stateInvoker.signOut();
      context.pop();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        actions: [
          IconButton(
            onPressed: () => signOut(),
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: body,
      bottomNavigationBar: ProfilePageNavBar(
        onSubmitPressed: () => submit(),
      ),
    );
  }
}
