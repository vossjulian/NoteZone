import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/domain/entities/invitation_entity.dart';
import 'package:notezone/app/domain/repositories/invitation_repository_interface.dart';
import 'package:notezone/shared/dtos/invitation/invitation_creation_dto.dart';
import 'package:notezone/shared/dtos/invitation/invitation_modification_dto.dart';

import '../../shared/dtos/invitation/invitation_dto.dart';

final invitationRepositoryProvider =
    Provider<InvitationRepositoryInterface>((ref) {
  return InvitationRepository(
    api: FirebaseFirestore.instance.collection("invitations"),
    logger: Logger(),
  );
});

class InvitationRepository implements InvitationRepositoryInterface {
  const InvitationRepository({
    required this.api,
    required this.logger,
  });

  final CollectionReference api;
  final Logger logger;

  InvitationEntity fromDocumentSnapshot(DocumentSnapshot doc) {
    if (doc.data() == null) {
      logger.d("data of snapshot is null");
      throw Exception();
    }
    InvitationDTO dto = InvitationDTO.fromJson(
      doc.data()! as Map<String, dynamic>,
    );
    logger.d(dto.toJson());
    return InvitationDTO.toEntity(dto, doc.id);
  }

  List<InvitationEntity> fromQuerySnapshot(QuerySnapshot query) {
    return query.docs
        .map((DocumentSnapshot doc) => fromDocumentSnapshot(doc))
        .toList();
  }

  @override
  Future<void> create({
    required String projectTitle,
    required String projectUid,
    required String receiverEmail,
  }) async {
    InvitationCreationDTO creationDTO = InvitationCreationDTO(
      projectTitle: projectTitle,
      projectUid: projectUid,
      receiverEmail: receiverEmail,
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
    required String invitationUid,
    required bool hasAccepted,
    required bool hasRejected,
  }) async {
    InvitationModificationDTO modificationDTO = InvitationModificationDTO(
      hasAccepted: hasAccepted,
      hasRejected: hasRejected,
      modificatedAt: DateTime.now(),
    );
    logger.d(modificationDTO.toJson());
    try {
      await api.doc(invitationUid).update(modificationDTO.toJson());
      logger.d("success:$invitationUid");
    } catch (e) {
      logger.d("failed:$e");
      throw Exception();
    }
  }

  @override
  Stream<List<InvitationEntity>> findAllByProfileUid({
    required String profileUid,
  }) {
    return api
        .where("receiverUid", isEqualTo: profileUid)
        .where("hasRejected", isEqualTo: false)
        .where("hasAccepted", isEqualTo: false)
        .orderBy("modificatedAt", descending: true)
        .snapshots()
        .map((QuerySnapshot query) => fromQuerySnapshot(query));
  }

  @override
  Stream<InvitationEntity> findByUid({
    required String invitationUid,
  }) {
    return api
        .doc(invitationUid)
        .snapshots()
        .map((DocumentSnapshot doc) => fromDocumentSnapshot(doc));
  }

  @override
  Future<void> deleteByUid({
    required String invitationUid,
  }) async {
    try {
      await api.doc(invitationUid).delete();
      logger.d("success:$invitationUid");
    } catch (e) {
      logger.d("failed:$e");
    }
  }
}
