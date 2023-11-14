import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/domain/entities/project_entity.dart';
import 'package:notezone/app/domain/repositories/project_repository_interface.dart';
import 'package:notezone/shared/dtos/project/project_creation_dto.dart';
import 'package:notezone/shared/dtos/project/project_dto.dart';
import 'package:notezone/shared/dtos/project/project_modification_dto.dart';

final projectRepositoryProvider = Provider<ProjectRepositoryInterface>((ref) {
  return ProjectRepository(
    api: FirebaseFirestore.instance.collection("projects"),
    logger: Logger(),
  );
});

class ProjectRepository implements ProjectRepositoryInterface {
  const ProjectRepository({
    required this.api,
    required this.logger,
  });

  final CollectionReference api;
  final Logger logger;

  ProjectEntity fromDocumentSnapshot(DocumentSnapshot doc) {
    if (doc.data() == null) {
      logger.d("data of snapshot is null");
      throw Exception();
    }
    ProjectDTO dto = ProjectDTO.fromJson(
      doc.data()! as Map<String, dynamic>,
    );
    logger.d(dto.toJson());
    return ProjectDTO.toEntity(dto, doc.id);
  }

  List<ProjectEntity> fromQuerySnapshot(QuerySnapshot query) {
    return query.docs
        .map((DocumentSnapshot doc) => fromDocumentSnapshot(doc))
        .toList();
  }

  @override
  Future<void> create({
    required String title,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
  }) async {
    ProjectCreationDTO creationDTO = ProjectCreationDTO(
      title: title,
      creatorUid: creatorUid,
      creatorFirstname: creatorFirstname,
      creatorLastname: creatorLastname,
      members: [creatorUid],
      createdAt: DateTime.now(),
      modificatedAt: DateTime.now(),
    );
    logger.d(creationDTO.toJson());
    try {
      DocumentReference doc = await api.add(creationDTO.toJson());
      logger.d("success:${doc.id}");
    } catch (e) {
      logger.d("failed:$e");
    }
  }

  @override
  Future<void> update({
    required String projectUid,
    required String title,
  }) async {
    ProjectModificationDTO modificationDTO = ProjectModificationDTO(
      title: title,
      modificatedAt: DateTime.now(),
    );
    logger.d(modificationDTO.toJson());
    try {
      await api.doc(projectUid).update(modificationDTO.toJson());
      logger.d("success:$projectUid");
    } catch (e) {
      logger.d("failed:$e");
      throw Exception();
    }
  }

  @override
  Stream<List<ProjectEntity>> findAllByProfileUid({
    required String profileUid,
  }) {
    return api
        .where("members", arrayContains: profileUid)
        .orderBy("modificatedAt", descending: true)
        .snapshots()
        .map((QuerySnapshot query) => fromQuerySnapshot(query));
  }

  @override
  Stream<ProjectEntity> findByUid({
    required String projectUid,
  }) {
    return api
        .doc(projectUid)
        .snapshots()
        .map((DocumentSnapshot doc) => fromDocumentSnapshot(doc));
  }

  @override
  Future<void> deleteByUid({
    required String projectUid,
  }) async {
    try {
      await api.doc(projectUid).delete();
      logger.d("success:$projectUid");
    } catch (e) {
      logger.d("failed:$e");
    }
  }
}
