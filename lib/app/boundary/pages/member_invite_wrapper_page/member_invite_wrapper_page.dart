import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/member_invite_wrapper_page/fragments/member_invite_fragment.dart';
import 'package:notezone/app/boundary/pages/member_invite_wrapper_page/fragments/member_invite_notifier.dart';
import 'package:notezone/app/boundary/pages/member_invite_wrapper_page/member_invite_provider.dart';
import 'package:notezone/app/boundary/pages/member_invite_wrapper_page/widgets/member_invite_page_nav_bar.dart';

class MemberInviteWrapperPage extends ConsumerWidget {
  const MemberInviteWrapperPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget body = Container();

    final state = ref.watch(memberInvitePageNotifierProvider);
    final fragmentInvoker = ref.read(memberInviteProvider.notifier);

    switch (state.currentFragment) {
      case MemberInviteState.memberInvite:
        body = const MemberInviteFragment();
        break;
    }

    void submit() {
      fragmentInvoker.submit();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Einladung Versenden"),
      ),
      body: body,
      bottomNavigationBar: MemberInvitePageNavBar(
        onSubmitPressed: () => submit(),
      ),
    );
  }
}
