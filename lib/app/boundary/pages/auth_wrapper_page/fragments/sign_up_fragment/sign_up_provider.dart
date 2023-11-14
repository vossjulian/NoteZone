import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper_page/fragments/sign_up_fragment/sign_up_state.dart';
import 'package:notezone/app/control/auth_facade.dart';
import 'package:notezone/app/control/auth_manager.dart';
import 'package:notezone/shared/utils/form_input_data.dart';
import 'package:validators/validators.dart';

final signUpProvider = StateNotifierProvider<SignUpProvider, SignUpState>(
  (ref) => SignUpProvider(
    authFacade: ref.watch(authManagerProvider),
    logger: Logger(),
  ),
);

class SignUpProvider extends StateNotifier<SignUpState> {
  SignUpProvider({required this.authFacade, required this.logger})
      : super(
          SignUpState(
            formKey: GlobalKey<FormState>(),
            firstname: FormInputData(error: "Bitte gültigen Namen angeben"),
            lastname: FormInputData(error: "Bitte gültigen Namen angeben"),
            email: FormInputData(error: "Bitte gültige E-Mail angeben"),
            password: FormInputData(error: "Passwort ungültig"),
            confirmPassword:
                FormInputData(error: "Passwörter müssen übereinstimmen"),
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

  void setConfirmPassword(String password) {
    state = state.copyWith(
      confirmPassword: state.confirmPassword.copyWith(
        value: password,
      ),
    );
    validateConfirmPassword(password);
  }

  void setFirstname(String name) {
    state = state.copyWith(
      firstname: state.firstname.copyWith(
        value: name,
      ),
    );
    validateFirstname(name);
  }

  void setLastname(String name) {
    state = state.copyWith(
      lastname: state.firstname.copyWith(
        value: name,
      ),
    );
    validateLastname(name);
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

  void validateConfirmPassword(String password) {
    final isValidConfirmPassword = isLength(password, 10) &&
        (state.password.value == state.confirmPassword.value);

    state = state.copyWith(
      confirmPassword:
          state.confirmPassword.copyWith(isValid: isValidConfirmPassword),
    );
  }

  void validateFirstname(String name) {
    final isValidFirstname = isAlpha(name);

    state = state.copyWith(
      firstname: state.firstname.copyWith(isValid: isValidFirstname),
    );
  }

  void validateLastname(String name) {
    final isValidLastname = isAlpha(name);

    state = state.copyWith(
      lastname: state.lastname.copyWith(isValid: isValidLastname),
    );
  }

  Future<void> signUp() async {
    if (!state.formKey.currentState!.validate()) return;
    state = state.copyWith(isLoading: true);
    try {
      await authFacade.signUp(
        email: state.email.value,
        password: state.password.value,
        firstname: state.firstname.value,
        lastname: state.lastname.value,
      );
      state = state.copyWith(isLoading: false, error: "");
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: "$e",
      );
    }

    state = state.copyWith(
      error: "",
      email: state.email.copyWith(value: ""),
      password: state.password.copyWith(value: ""),
    );
  }
}
