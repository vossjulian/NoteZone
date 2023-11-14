import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitation_creation_dto.freezed.dart';
part 'invitation_creation_dto.g.dart';

@freezed
class InvitationCreationDTO with _$InvitationCreationDTO {
  const factory InvitationCreationDTO({
    required String projectTitle,
    required String projectUid,
    required String receiverEmail,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _InvitationCreationDTO;

  factory InvitationCreationDTO.fromJson(Map<String, Object?> json) =>
      _$InvitationCreationDTOFromJson(json);
}
