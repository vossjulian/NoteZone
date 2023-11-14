import 'package:notezone/app/domain/entities/project_entity.dart';

abstract class ProjectRepositoryInterface {
  Future<void> create({
    required String title,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
  });

  Future<void> update({
    required String projectUid,
    required String title,
  });

  Stream<ProjectEntity> findByUid({
    required String projectUid,
  });

  Stream<List<ProjectEntity>> findAllByProfileUid({
    required String profileUid,
  });

  Future<void> deleteByUid({
    required String projectUid,
  });
}
