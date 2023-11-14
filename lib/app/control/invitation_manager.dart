import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/control/invitation_facade.dart';
import 'package:notezone/app/domain/entities/invitation_entity.dart';
import 'package:notezone/app/gateway/invitation_repository.dart';

import '../domain/repositories/invitation_repository_interface.dart';

final invitationManagerProvider = Provider<InvitationFacade>((ref) {
  return InvitationManager(
    invitationInterface: ref.watch(invitationRepositoryProvider),
  );
});

class InvitationManager implements InvitationFacade {
  const InvitationManager({
    required this.invitationInterface,
  });

  final InvitationRepositoryInterface invitationInterface;

  @override
  Future<void> create({
    required String projectTitle,
    required String projectUid,
    required String receiverEmail,
  }) async {
    return invitationInterface.create(
      projectTitle: projectTitle,
      projectUid: projectUid,
      receiverEmail: receiverEmail,
    );
  }

  @override
  Future<void> update({
    required String invitationUid,
    required bool hasAccepted,
    required bool hasRejected,
  }) async {
    return invitationInterface.update(
      invitationUid: invitationUid,
      hasAccepted: hasAccepted,
      hasRejected: hasRejected,
    );
  }

  @override
  Stream<List<InvitationEntity>> findAllByProfileUid({
    required String profileUid,
  }) {
    return invitationInterface.findAllByProfileUid(
      profileUid: profileUid,
    );
  }

  @override
  Stream<InvitationEntity> findByUid({
    required String invitationUid,
  }) {
    return invitationInterface.findByUid(
      invitationUid: invitationUid,
    );
  }

  @override
  Future<void> deleteByUid({required String invitationUid}) {
    // TODO: implement deleteByUid
    throw UnimplementedError();
  }
}
