import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/control/auth_facade.dart';
import 'package:notezone/app/control/auth_manager.dart';
import 'package:notezone/app/domain/entities/user_entity.dart';

part 'auth_state_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isAuthenticated,
  }) = _AuthState;
}

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(
    authFacade: ref.watch(authManagerProvider),
  );
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier({required this.authFacade}) : super(const AuthState());

  final AuthFacade authFacade;

  Stream<UserEntity> onUserChanges() => authFacade.onUserChanges();
}
