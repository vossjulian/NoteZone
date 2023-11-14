import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/fragments/sign_in_fragment/sign_in_state.dart';
import 'package:notezone/app/control/auth_facade.dart';
import 'package:notezone/app/control/auth_manager.dart';
import 'package:notezone/shared/utils/form_input_data.dart';
import 'package:validators/validators.dart';

final signInProvider =
    StateNotifierProvider<SignInProvider, SignInState>((ref) => SignInProvider(
          authFacade: ref.watch(authManagerProvider),
          logger: Logger(),
        ));

class SignInProvider extends StateNotifier<SignInState> {
  SignInProvider({required this.authFacade, required this.logger})
      : super(
          SignInState(
            formKey: GlobalKey<FormState>(),
            email: FormInputData(error: "Bitte gültige E-Mail angeben"),
            password: FormInputData(error: "Bitte gültiges Password angeben"),
          ),
        );

  final Logger logger;
  final AuthFacade authFacade;

  void setEmail(String value) {
    state = state.copyWith(
      email: state.email.copyWith(
        value: value,
      ),
    );
    validateEmail(value);
  }

  void setPassword(String password) {
    state = state.copyWith(
      password: state.password.copyWith(
        value: password,
      ),
    );
    validatePassword(password);
  }

  void validateEmail(String email) {
    final isValidEmail = isEmail(email);

    state = state.copyWith(
      email: state.email.copyWith(isValid: isValidEmail),
    );
  }

  void validatePassword(String password) {
    final isValidPassword = isLength(password, 10);

    state = state.copyWith(
      password: state.password.copyWith(isValid: isValidPassword),
    );
  }

  Future<void> signIn() async {
    if (!state.formKey.currentState!.validate()) return;
    state = state.copyWith(isLoading: true);
    try {
      await authFacade.signIn(
        email: state.email.value,
        password: state.password.value,
      );
      state = state.copyWith(isLoading: false, error: "");
    } catch (e) {
      state = state.copyWith(isLoading: false, error: "$e");
    }
    state = state.copyWith(
      error: "",
      email: state.email.copyWith(value: ""),
      password: state.password.copyWith(value: ""),
    );
  }
}
