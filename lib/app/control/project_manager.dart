import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/control/project_facade.dart';
import 'package:notezone/app/domain/entities/profile_entity.dart';
import 'package:notezone/app/domain/entities/project_entity.dart';
import 'package:notezone/app/domain/entities/user_entity.dart';
import 'package:notezone/app/domain/repositories/auth_repository_interface.dart';
import 'package:notezone/app/domain/repositories/profile_repository_interface.dart';
import 'package:notezone/app/domain/repositories/project_repository_interface.dart';
import 'package:notezone/app/gateway/auth_repository.dart';
import 'package:notezone/app/gateway/profile_repository.dart';
import 'package:notezone/app/gateway/project_repository.dart';

final projectManagerProvider = Provider<ProjectFacade>((ref) {
  return ProjectManager(
    authInterface: ref.watch(authRepositoryProvider),
    projectInterface: ref.watch(projectRepositoryProvider),
    profileInterface: ref.watch(profileRepositoryProvider),
  );
});

class ProjectManager implements ProjectFacade {
  const ProjectManager({
    required this.authInterface,
    required this.projectInterface,
    required this.profileInterface,
  });

  final AuthRepositoryInterface authInterface;
  final ProjectRepositoryInterface projectInterface;
  final ProfileRepositoryInterface profileInterface;

  @override
  Future<void> create({
    required String title,
  }) async {
    UserEntity currentUser = authInterface.getCurrentUser();
    ProfileEntity currentProfile =
        await profileInterface.findByUid(profileUid: currentUser.uid).first;
    return await projectInterface.create(
      title: title,
      creatorUid: currentProfile.uid,
      creatorFirstname: currentProfile.firstname,
      creatorLastname: currentProfile.lastname,
    );
  }

  @override
  Future<void> update({
    required String projectUid,
    required String title,
  }) async {
    return await projectInterface.update(
      projectUid: projectUid,
      title: title,
    );
  }

  @override
  Stream<List<ProjectEntity>> findAllByProfileUid() {
    UserEntity currentUser = authInterface.getCurrentUser();
    return projectInterface.findAllByProfileUid(
      profileUid: currentUser.uid,
    );
  }

  @override
  Stream<ProjectEntity> findByUid({
    required String projectUid,
  }) {
    return projectInterface.findByUid(
      projectUid: projectUid,
    );
  }

  @override
  Future<void> deleteByUid({
    required String projectUid,
  }) async {
    return await projectInterface.deleteByUid(
      projectUid: projectUid,
    );
  }
}
