import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/domain/entities/appointment_entity.dart';
import 'package:notezone/app/domain/repositories/appointment_repository_interface.dart';
import 'package:notezone/shared/dtos/appointment/appointment_creation_dto.dart';
import 'package:notezone/shared/dtos/appointment/appointment_dto.dart';

final appointmentRepositoryProvider =
    Provider<AppointmentRepositoryInterface>((ref) {
  return AppointmentRepository(
    api: FirebaseFirestore.instance.collection("projects"),
    logger: Logger(),
  );
});

class AppointmentRepository implements AppointmentRepositoryInterface {
  const AppointmentRepository({
    required this.api,
    required this.logger,
  });

  final CollectionReference api;
  final Logger logger;

  AppointmentEntity fromDocumentSnapshot(DocumentSnapshot doc) {
    if (doc.data() == null) {
      logger.d("data of snapshot is null");
      throw Exception("data of snapshot is null");
    }
    AppointmentDTO dto = AppointmentDTO.fromJson(
      doc.data()! as Map<String, dynamic>,
    );
    logger.d(dto.toJson());
    return AppointmentDTO.toEntity(dto, doc.id);
  }

  List<AppointmentEntity> fromQuerySnapshot(QuerySnapshot query) {
    return query.docs
        .map((DocumentSnapshot doc) => fromDocumentSnapshot(doc))
        .toList();
  }

  @override
  Future<void> create({
    required String projectUid,
    required String title,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
    required String start,
    required String end,
    required String createdAt,
    required String modificatedAt,
  }) async {
    AppointmentCreationDTO creationDTO = AppointmentCreationDTO(
        title: title,
        creatorUid: creatorUid,
        creatorFirstname: creatorFirstname,
        creatorLastname: creatorLastname,
        start: start,
        end: end,
        createdAt: createdAt,
        modificatedAt: modificatedAt);
    logger.d(creationDTO.toJson());
    try {
      DocumentReference doc = await api
          .doc(projectUid)
          .collection("appointments")
          .add(creationDTO.toJson());
      logger.d("success:${doc.id}");
    } catch (e) {
      logger.d("failed:$e");
    }
  }

  @override
  Future<void> deleteByUid(
      {required String projectUid, required String appointmentUid}) async {
    try {
      await api
          .doc(projectUid)
          .collection("appointments")
          .doc(appointmentUid)
          .delete();
      logger.d("success:$appointmentUid");
    } catch (e) {
      logger.d("failed:$e");
    }
  }

  @override
  Stream<List<AppointmentEntity>> findAllByProjectUid(
      {required String projectUid}) {
    logger.d(projectUid);
    try {
      return api
          .doc(projectUid)
          .collection("appointments")
          //.orderBy("modificatedAt", descending: true)
          .snapshots()
          .map((QuerySnapshot query) => fromQuerySnapshot(query));
    } catch (e) {
      logger.d("failed:$e");
      throw Exception();
    }
  }

  @override
  Stream<AppointmentEntity> findByUid({
    required String projectUid,
    required String appointmentUid,
  }) {
    return api
        .doc(projectUid)
        .collection("appointments")
        .doc(appointmentUid)
        .snapshots()
        .map((DocumentSnapshot doc) => fromDocumentSnapshot(doc));
  }
}
