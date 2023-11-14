import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/domain/entities/user_entity.dart';
import 'package:notezone/app/domain/repositories/auth_repository_interface.dart';

final authRepositoryProvider = Provider<AuthRepositoryInterface>((ref) {
  return AuthRepository(
    api: FirebaseAuth.instance,
    logger: Logger(),
  );
});

class AuthRepository implements AuthRepositoryInterface {
  const AuthRepository({
    required this.api,
    required this.logger,
  });

  final FirebaseAuth api;
  final Logger logger;

  @override
  Stream<UserEntity> onUserChanges() {
    return api.userChanges().map((User? user) {
      if (user == null) {
        return UserEntity();
      }
      return UserEntity(
        uid: user.uid,
        email: user.email!,
        isAuthenticated: true,
      );
    });
  }

  @override
  UserEntity getCurrentUser() {
    User? user = api.currentUser;
    if (user == null) {
      logger.d("failed:user is null");
      throw Exception();
    }
    if (user.email == null) {
      logger.d("failed:user email is null");
      throw Exception();
    }
    logger.d("success:$user");
    return UserEntity(
      uid: user.uid,
      email: user.email!,
    );
  }

  @override
  Future<void> signIn({required String email, required String password}) async {
    try {
      UserCredential userCredential = await api.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      logger.d("success:${userCredential.user}");
    } on FirebaseAuthException catch (e) {
      logger.d("failed:$e");
      throw Exception(e.message);
    } catch (e) {
      logger.d("failed:$e");
      throw Exception();
    }
  }

  @override
  Future<void> signUp({required String email, required String password}) async {
    try {
      UserCredential userCredential = await api.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      logger.d("success:${userCredential.user}");
    } catch (e) {
      logger.d("failed:$e");
      throw Exception();
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await api.signOut();
      logger.d("success");
    } catch (e) {
      logger.d("failed");
    }
  }
}
