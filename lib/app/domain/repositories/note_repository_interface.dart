import 'package:notezone/app/domain/entities/note_entity.dart';

abstract class NoteRepositoryInterface {
  Future<void> create({
    required String projectUid,
    required String title,
    required String content,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
  });

  Future<void> update({
    required String projectUid,
    required String noteUid,
    required String title,
    required String content,
  });

  Stream<NoteEntity> findByUid({
    required String projectUid,
    required String noteUid,
  });

  Stream<List<NoteEntity>> findAllByProjectUid({
    required String projectUid,
  });

  Future<void> deleteByUid({
    required String projectUid,
    required String noteUid,
  });
}
