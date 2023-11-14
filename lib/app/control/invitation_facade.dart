import 'package:notezone/app/domain/entities/invitation_entity.dart';

abstract class InvitationFacade {
  Future<void> create({
    required String projectTitle,
    required String projectUid,
    required String receiverEmail,
  });

  Future<void> update({
    required String invitationUid,
    required bool hasAccepted,
    required bool hasRejected,
  });

  Stream<InvitationEntity> findByUid({
    required String invitationUid,
  });

  Stream<List<InvitationEntity>> findAllByProfileUid({
    required String profileUid,
  });

  Future<void> deleteByUid({
    required String invitationUid,
  });
}
