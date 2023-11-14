import 'package:notezone/app/domain/entities/appointment_entity.dart';

abstract class AppointmentRepositoryInterface {
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
  });

  Stream<AppointmentEntity> findByUid({
    required String projectUid,
    required String appointmentUid,
  });

  Stream<List<AppointmentEntity>> findAllByProjectUid({
    required String projectUid,
  });

  Future<void> deleteByUid({
    required String projectUid,
    required String appointmentUid,
  });
}
