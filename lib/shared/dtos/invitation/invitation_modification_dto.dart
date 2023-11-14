import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitation_modification_dto.freezed.dart';
part 'invitation_modification_dto.g.dart';

@freezed
class InvitationModificationDTO with _$InvitationModificationDTO {
  const factory InvitationModificationDTO({
    required bool hasAccepted,
    required bool hasRejected,
    required DateTime modificatedAt,
  }) = _InvitationModificationDTO;

  factory InvitationModificationDTO.fromJson(Map<String, Object?> json) =>
      _$InvitationModificationDTOFromJson(json);
}
