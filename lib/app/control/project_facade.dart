import 'package:notezone/app/domain/entities/project_entity.dart';

abstract class ProjectFacade {
  Future<void> create({
    required String title,
  });

  Future<void> update({
    required String projectUid,
    required String title,
  });

  Stream<ProjectEntity> findByUid({
    required String projectUid,
  });

  Stream<List<ProjectEntity>> findAllByProfileUid();

  Future<void> deleteByUid({
    required String projectUid,
  });
}
