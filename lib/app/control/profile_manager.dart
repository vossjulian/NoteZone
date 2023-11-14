import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/control/profile_facade.dart';
import 'package:notezone/app/domain/entities/profile_entity.dart';
import 'package:notezone/app/domain/repositories/profile_repository_interface.dart';
import 'package:notezone/app/gateway/profile_repository.dart';

final profileManagerProvider = Provider<ProfileFacade>((ref) {
  return ProfileManager(
    profileInterface: ref.watch(profileRepositoryProvider),
  );
});

class ProfileManager implements ProfileFacade {
  const ProfileManager({
    required this.profileInterface,
  });

  final ProfileRepositoryInterface profileInterface;

  @override
  Future<void> update({
    required String profileUid,
    required String firstname,
    required String lastname,
    required String email,
  }) async {
    return await profileInterface.update(
      profileUid: profileUid,
      firstname: firstname,
      lastname: lastname,
      email: email,
    );
  }

  @override
  Stream<List<ProfileEntity>> findAllByProjectUid({
    required String projectUid,
  }) {
    return profileInterface.findAllByProjectUid(
      projectUid: projectUid,
    );
  }

  @override
  Stream<ProfileEntity> findByUid({
    required String profileUid,
  }) {
    return profileInterface.findByUid(
      profileUid: profileUid,
    );
  }

  @override
  Future<void> deleteByUid({
    required String profileUid,
  }) async {
    return await profileInterface.deleteByUid(
      profileUid: profileUid,
    );
  }
}
