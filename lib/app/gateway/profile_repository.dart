import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/domain/entities/profile_entity.dart';
import 'package:notezone/app/domain/repositories/profile_repository_interface.dart';

import '../../shared/dtos/profile/profile_creation_dto.dart';
import '../../shared/dtos/profile/profile_dto.dart';
import '../../shared/dtos/profile/profile_modification_dto.dart';

final profileRepositoryProvider = Provider<ProfileRepositoryInterface>((ref) {
  return ProfileRepository(
    api: FirebaseFirestore.instance.collection("profiles"),
    logger: Logger(),
  );
});

class ProfileRepository implements ProfileRepositoryInterface {
  const ProfileRepository({
    required this.api,
    required this.logger,
  });

  final CollectionReference api;
  final Logger logger;

  ProfileEntity fromDocumentSnapshot(DocumentSnapshot doc) {
    if (doc.data() == null) {
      logger.d("data of snapshot is null");
      throw Exception();
    }
    ProfileDTO dto = ProfileDTO.fromJson(
      doc.data()! as Map<String, dynamic>,
    );
    logger.d(dto.toJson());
    return ProfileDTO.toEntity(dto, doc.id);
  }

  List<ProfileEntity> fromQuerySnapshot(QuerySnapshot query) {
    return query.docs
        .map((DocumentSnapshot doc) => fromDocumentSnapshot(doc))
        .toList();
  }

  @override
  Future<void> create({
    required String profileUid,
    required String firstname,
    required String lastname,
    required String email,
  }) async {
    ProfileCreationDTO creationDTO = ProfileCreationDTO(
      firstname: firstname,
      lastname: lastname,
      email: email,
      createdAt: DateTime.now(),
      modificatedAt: DateTime.now(),
    );
    logger.d(creationDTO.toJson());
    try {
      api.doc(profileUid).set(creationDTO.toJson());
      logger.d("success:$profileUid");
    } catch (e) {
      logger.d("failed:$e");
    }
  }

  @override
  Future<void> update({
    required String profileUid,
    required String firstname,
    required String lastname,
    required String email,
  }) async {
    ProfileModificationDTO modificationDTO = ProfileModificationDTO(
      firstname: firstname,
      lastname: lastname,
      email: email,
      modificatedAt: DateTime.now(),
    );
    logger.d(modificationDTO.toJson());
    try {
      await api.doc(profileUid).update(modificationDTO.toJson());
      logger.d("success:$profileUid");
    } catch (e) {
      logger.d("failed:$e");
      throw Exception();
    }
  }

  @override
  Stream<ProfileEntity> findByUid({
    required String profileUid,
  }) {
    return api
        .doc(profileUid)
        .snapshots()
        .map((DocumentSnapshot doc) => fromDocumentSnapshot(doc));
  }

  @override
  Stream<List<ProfileEntity>> findAllByProjectUid({
    required String projectUid,
  }) {
    return api
        .where("projects", arrayContains: projectUid)
        .orderBy("modificatedAt", descending: true)
        .snapshots()
        .map((QuerySnapshot query) => fromQuerySnapshot(query));
  }

  @override
  Future<void> deleteByUid({
    required String profileUid,
  }) async {
    try {
      await api.doc(profileUid).delete();
      logger.d("success:$profileUid");
    } catch (e) {
      logger.d("failed:$e");
    }
  }
}
