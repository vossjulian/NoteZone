import '../domain/entities/user_entity.dart';

abstract class AuthFacade {
  Stream<UserEntity> onUserChanges();

  UserEntity getCurrentUser();

  Future<void> signIn({
    required String email,
    required String password,
  });

  Future<void> signUp({
    required String email,
    required String password,
    required String firstname,
    required String lastname,
  });

  Future<void> signOut();
}
