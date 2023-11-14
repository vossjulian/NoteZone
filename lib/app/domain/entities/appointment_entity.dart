import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_entity.freezed.dart';
//part 'profile_entity.g.dart';

@freezed
class AppointmentEntity with _$AppointmentEntity {
  factory AppointmentEntity({
    required String uid,
    required String title,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
    required DateTime startDate,
    required DateTime endDate,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _AppointmentEntity;
}
