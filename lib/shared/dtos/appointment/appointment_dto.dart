import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/appointment_entity.dart';

part 'appointment_dto.freezed.dart';
part 'appointment_dto.g.dart';

@freezed
class AppointmentDTO with _$AppointmentDTO {
  const factory AppointmentDTO({
    required String title,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
    required String start,
    required String end,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _AppointmentDTO;

  factory AppointmentDTO.fromJson(Map<String, Object?> json) =>
      _$AppointmentDTOFromJson(json);

  static AppointmentEntity toEntity(AppointmentDTO dto, String uid) {
    return AppointmentEntity(
      uid: uid,
      title: dto.title,
      creatorUid: dto.creatorUid,
      creatorFirstname: dto.creatorFirstname,
      creatorLastname: dto.creatorLastname,
      startDate: DateTime.parse(dto.start),
      endDate: DateTime.parse(dto.end),
      createdAt: dto.createdAt,
      modificatedAt: dto.modificatedAt,
    );
  }
}
