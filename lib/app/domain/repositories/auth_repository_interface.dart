import 'package:notezone/app/domain/entities/user_entity.dart';

abstract class AuthRepositoryInterface {
  Stream<UserEntity> onUserChanges();
  UserEntity getCurrentUser();
  Future<void> signIn({required String email, required String password});
  Future<void> signUp({required String email, required String password});
  Future<void> signOut();
}
