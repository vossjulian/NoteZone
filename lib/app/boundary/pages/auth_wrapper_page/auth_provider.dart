import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_provider.freezed.dart';

enum AuthState {
  signIn,
  signUp,
}

@freezed
class AuthPageState with _$AuthPageState {
  const factory AuthPageState({
    @Default(AuthState.signIn) AuthState currentFragment,
  }) = _AuthPageState;
}

final authNotifierProvider =
    StateNotifierProvider<AuthProvider, AuthPageState>((ref) {
  return AuthProvider();
});

class AuthProvider extends StateNotifier<AuthPageState> {
  AuthProvider() : super(const AuthPageState());

  void showSignInFragment() {
    state = state.copyWith(currentFragment: AuthState.signIn);
  }

  void showSignUpFragment() {
    state = state.copyWith(currentFragment: AuthState.signUp);
  }
}
