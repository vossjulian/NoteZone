import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/control/note_facade.dart';
import 'package:notezone/app/domain/entities/note_entity.dart';
import 'package:notezone/app/domain/entities/profile_entity.dart';
import 'package:notezone/app/domain/entities/user_entity.dart';
import 'package:notezone/app/domain/repositories/auth_repository_interface.dart';
import 'package:notezone/app/domain/repositories/note_repository_interface.dart';
import 'package:notezone/app/domain/repositories/profile_repository_interface.dart';
import 'package:notezone/app/gateway/auth_repository.dart';
import 'package:notezone/app/gateway/note_repository.dart';
import 'package:notezone/app/gateway/profile_repository.dart';

final noteManagerProvider = Provider<NoteFacade>((ref) {
  return NoteManager(
    authInterface: ref.watch(authRepositoryProvider),
    profileInterface: ref.watch(profileRepositoryProvider),
    noteInterface: ref.watch(noteRepositoryProvider),
  );
});

class NoteManager implements NoteFacade {
  const NoteManager({
    required this.authInterface,
    required this.profileInterface,
    required this.noteInterface,
  });

  final AuthRepositoryInterface authInterface;
  final ProfileRepositoryInterface profileInterface;
  final NoteRepositoryInterface noteInterface;

  @override
  Future<void> create({
    required String projectUid,
    required String title,
    required String content,
  }) async {
    UserEntity currentUser = authInterface.getCurrentUser();
    ProfileEntity currentProfile =
        await profileInterface.findByUid(profileUid: currentUser.uid).first;
    return await noteInterface.create(
      projectUid: projectUid,
      title: title,
      content: content,
      creatorUid: currentProfile.uid,
      creatorFirstname: currentProfile.firstname,
      creatorLastname: currentProfile.lastname,
    );
  }

  @override
  Future<void> update({
    required String projectUid,
    required String noteUid,
    required String title,
    required String content,
  }) {
    return noteInterface.update(
      projectUid: projectUid,
      noteUid: noteUid,
      title: title,
      content: content,
    );
  }

  @override
  Stream<List<NoteEntity>> findAllByProjectUid({
    required String projectUid,
  }) {
    return noteInterface.findAllByProjectUid(
      projectUid: projectUid,
    );
  }

  @override
  Stream<NoteEntity> findByUid({
    required String projectUid,
    required String noteUid,
  }) {
    return noteInterface.findByUid(
      projectUid: projectUid,
      noteUid: noteUid,
    );
  }

  @override
  Future<void> deleteByUid({
    required String projectUid,
    required String noteUid,
  }) {
    return noteInterface.deleteByUid(
      projectUid: projectUid,
      noteUid: noteUid,
    );
  }
}
