import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/invitation_entity.dart';

part 'invitation_dto.freezed.dart';
part 'invitation_dto.g.dart';

@freezed
class InvitationDTO with _$InvitationDTO {
  const factory InvitationDTO({
    required String projectTitle,
    required String projectUid,
    required String receiverUid,
    required String receiverEmail,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _InvitationDTO;

  factory InvitationDTO.fromJson(Map<String, Object?> json) =>
      _$InvitationDTOFromJson(json);

  static InvitationEntity toEntity(InvitationDTO dto, String uid) {
    return InvitationEntity(
      uid: uid,
      projectUid: dto.projectUid,
      projectTitle: dto.projectTitle,
      receiverUid: dto.receiverUid,
      receiverEmail: dto.receiverEmail,
      createdAt: dto.createdAt,
      modificatedAt: dto.modificatedAt,
    );
  }
}
