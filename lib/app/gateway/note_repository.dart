import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/domain/entities/note_entity.dart';
import 'package:notezone/app/domain/repositories/note_repository_interface.dart';
import 'package:notezone/shared/dtos/note/note_creation_dto.dart';
import 'package:notezone/shared/dtos/note/note_dto.dart';
import 'package:notezone/shared/dtos/note/note_modification_dto.dart';

final noteRepositoryProvider = Provider<NoteRepositoryInterface>((ref) {
  return NoteRepository(
    api: FirebaseFirestore.instance.collection("projects"),
    logger: Logger(),
  );
});

class NoteRepository implements NoteRepositoryInterface {
  const NoteRepository({
    required this.api,
    required this.logger,
  });

  final CollectionReference api;
  final Logger logger;

  NoteEntity fromDocumentSnapshot(DocumentSnapshot doc) {
    if (doc.data() == null) {
      logger.d("data of snapshot is null");
      throw Exception("data of snapshot is null");
    }
    NoteDTO dto = NoteDTO.fromJson(
      doc.data()! as Map<String, dynamic>,
    );
    logger.d(dto.toJson());
    return NoteDTO.toEntity(dto, doc.id);
  }

  List<NoteEntity> fromQuerySnapshot(QuerySnapshot query) {
    return query.docs
        .map((DocumentSnapshot doc) => fromDocumentSnapshot(doc))
        .toList();
  }

  @override
  Future<void> create({
    required String projectUid,
    required String title,
    required String content,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
  }) async {
    NoteCreationDTO creationDTO = NoteCreationDTO(
      title: title,
      content: content,
      creatorUid: creatorUid,
      creatorFirstname: creatorFirstname,
      creatorLastname: creatorLastname,
      createdAt: DateTime.now(),
      modificatedAt: DateTime.now(),
    );
    logger.d(creationDTO.toJson());
    try {
      DocumentReference doc = await api
          .doc(projectUid)
          .collection("notes")
          .add(creationDTO.toJson());
      logger.d("success:${doc.id}");
    } catch (e) {
      logger.d("failed:$e");
    }
  }

  @override
  Future<void> update({
    required String projectUid,
    required String noteUid,
    required String title,
    required String content,
  }) async {
    NoteModificationDTO modificationDTO = NoteModificationDTO(
      title: title,
      content: content,
      modificatedAt: DateTime.now(),
    );
    logger.d(modificationDTO.toJson());
    try {
      await api
          .doc(projectUid)
          .collection("notes")
          .doc(noteUid)
          .update(modificationDTO.toJson());
      logger.d("success:$noteUid");
    } catch (e) {
      logger.d("failed:$e");
      throw Exception();
    }
  }

  @override
  Stream<List<NoteEntity>> findAllByProjectUid({
    required String projectUid,
  }) {
    logger.d(projectUid);
    try {
      return api
          .doc(projectUid)
          .collection("notes")
          //.orderBy("modificatedAt", descending: true)
          .snapshots()
          .map((QuerySnapshot query) => fromQuerySnapshot(query));
    } catch (e) {
      logger.d("failed:$e");
      throw Exception();
    }
  }

  @override
  Stream<NoteEntity> findByUid({
    required String projectUid,
    required String noteUid,
  }) {
    return api
        .doc(projectUid)
        .collection("notes")
        .doc(noteUid)
        .snapshots()
        .map((DocumentSnapshot doc) => fromDocumentSnapshot(doc));
  }

  @override
  Future<void> deleteByUid({
    required String projectUid,
    required String noteUid,
  }) async {
    try {
      await api.doc(projectUid).collection("notes").doc(noteUid).delete();
      logger.d("success:$noteUid");
    } catch (e) {
      logger.d("failed:$e");
    }
  }
}
