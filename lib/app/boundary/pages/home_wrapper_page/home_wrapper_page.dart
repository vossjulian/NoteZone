import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:notezone/app/boundary/pages/crud_page/crud_provider.dart';
import 'package:notezone/app/boundary/pages/home_wrapper_page/fragments/home_fragment.dart';
import 'package:notezone/app/boundary/pages/home_wrapper_page/home_provider.dart';
import 'package:notezone/app/boundary/pages/home_wrapper_page/widgets/home_page_nav_bar.dart';

import '../profile_wrapper_page/fragments/profile_provider.dart';

class HomeWrapperPage extends ConsumerWidget {
  const HomeWrapperPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget body = Container();

    final state = ref.watch(homeNotifierProvider);
    final crudStateInvoker = ref.read(crudNotifierProvider.notifier);
    final profileStateInvoker = ref.read(profileProvider.notifier);

    switch (state.currentFragment) {
      case HomeState.home:
        body = const HomeFragment();
        break;
    }

    void submit() {
      {
        crudStateInvoker.showProjectFragment();
        crudStateInvoker.changeMode(SubmitMode.create);
        context.go("/crud");
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("NoteZone"),
        actions: [
          IconButton(
            onPressed: () {
              context.push("/profile");
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: body,
      bottomNavigationBar: HomePageNavBar(
        onSubmitPressed: () => submit(),
      ),
    );
  }
}
