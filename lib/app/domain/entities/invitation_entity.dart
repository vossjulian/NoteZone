import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitation_entity.freezed.dart';
//part 'profile_entity.g.dart';

@freezed
class InvitationEntity with _$InvitationEntity {
  factory InvitationEntity({
    required String uid,
    required String projectUid,
    required String projectTitle,
    required String receiverUid,
    required String receiverEmail,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _InvitationEntity;
}
