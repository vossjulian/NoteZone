import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/auth_provider.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/fragments/sign_in_fragment/sign_in_fragment.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/fragments/sign_in_fragment/sign_in_provider.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/fragments/sign_up_fragment/sign_up_fragment.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/fragments/sign_up_fragment/sign_up_provider.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/widgets/auth_page_nav_bar.dart';
import 'package:notezone/app/boundary/widgets/logo_widget.dart';

class AuthWrapperPage extends ConsumerWidget {
  const AuthWrapperPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authNotifierProvider);
    final signInFragmentStateInvoker = ref.read(signInProvider.notifier);
    final signUpFragmentStateInvoker = ref.read(signUpProvider.notifier);

    void submit() {
      if (state.currentFragment == AuthState.signIn) {
        signInFragmentStateInvoker.signIn();
      } else {
        signUpFragmentStateInvoker.signUp();
      }
    }

    final controller = PageController(initialPage: 0);

    ref.listen(authNotifierProvider, (previous, next) async {
      if (next.currentFragment == AuthState.signIn) {
        await controller.animateToPage(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.linear,
        );
      } else if (next.currentFragment == AuthState.signUp) {
        await controller.animateToPage(
          1,
          duration: const Duration(milliseconds: 500),
          curve: Curves.linear,
        );
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text("NoteZone")),
      body: Column(
        children: [
          const LogoWidget(
            size: 190,
          ),
          Expanded(
            child: PageView(
              controller: controller,
              children: const [
                SignInFragment(),
                SignUpFragment(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: AuthPageNavBar(
        onSignInTabPressed: () =>
            ref.read(authNotifierProvider.notifier).showSignInFragment(),
        onSignUpTabPressed: () =>
            ref.read(authNotifierProvider.notifier).showSignUpFragment(),
        onSubmitPressed: () => submit(),
      ),
    );
  }
}
