import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_creation_dto.freezed.dart';
part 'appointment_creation_dto.g.dart';

@freezed
class AppointmentCreationDTO with _$AppointmentCreationDTO {
  const factory AppointmentCreationDTO({
    required String title,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
    required String start,
    required String end,
    required String createdAt,
    required String modificatedAt,
  }) = _AppointmentCreationDTO;

  factory AppointmentCreationDTO.fromJson(Map<String, Object?> json) =>
      _$AppointmentCreationDTOFromJson(json);
}
