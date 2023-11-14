import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/domain/entities/user_entity.dart';
import 'package:notezone/app/domain/repositories/auth_repository_interface.dart';
import 'package:notezone/app/gateway/auth_repository.dart';
import 'package:notezone/app/gateway/profile_repository.dart';

import '../domain/repositories/profile_repository_interface.dart';
import 'auth_facade.dart';

final authManagerProvider = Provider<AuthFacade>((ref) {
  return AuthManager(
    authInterface: ref.watch(authRepositoryProvider),
    profileInterface: ref.watch(profileRepositoryProvider),
  );
});

class AuthManager implements AuthFacade {
  const AuthManager({
    required this.authInterface,
    required this.profileInterface,
  });

  final AuthRepositoryInterface authInterface;
  final ProfileRepositoryInterface profileInterface;

  @override
  Stream<UserEntity> onUserChanges() {
    return authInterface.onUserChanges();
  }

  @override
  UserEntity getCurrentUser() {
    return authInterface.getCurrentUser();
  }

  @override
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    return await authInterface.signIn(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signUp({
    required String email,
    required String password,
    required String firstname,
    required String lastname,
  }) async {
    await authInterface.signUp(
      email: email,
      password: password,
    );

    await profileInterface.create(
      profileUid: getCurrentUser().uid,
      firstname: firstname,
      lastname: lastname,
      email: email,
    );
  }

  @override
  Future<void> signOut() async {
    authInterface.signOut();
  }
}
