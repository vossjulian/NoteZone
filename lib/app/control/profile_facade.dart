import 'package:notezone/app/domain/entities/profile_entity.dart';

abstract class ProfileFacade {
  /*Future<void> create({
    required String profileUid,
    required String firstname,
    required String lastname,
    required String email,
  });*/

  Future<void> update({
    required String profileUid,
    required String firstname,
    required String lastname,
    required String email,
  });

  Stream<ProfileEntity> findByUid({
    required String profileUid,
  });

  Stream<List<ProfileEntity>> findAllByProjectUid({
    required String projectUid,
  });

  Future<void> deleteByUid({
    required String profileUid,
  });
}
