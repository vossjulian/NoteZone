import 'package:notezone/app/domain/entities/appointment_entity.dart';

abstract class AppointmentFacade {
  Future<void> create({
    required String projectUid,
    required String title,
    required DateTime start,
    required DateTime end,
  });

  Future<void> update({
    required String projectUid,
    required String appointmentUid,
    required String title,
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
