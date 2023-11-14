import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notezone/app/control/appointment_facade.dart';
import 'package:notezone/app/domain/entities/appointment_entity.dart';
import 'package:notezone/app/domain/entities/profile_entity.dart';
import 'package:notezone/app/domain/entities/user_entity.dart';
import 'package:notezone/app/domain/repositories/appointment_repository_interface.dart';
import 'package:notezone/app/domain/repositories/auth_repository_interface.dart';
import 'package:notezone/app/domain/repositories/profile_repository_interface.dart';
import 'package:notezone/app/gateway/appointment_repository.dart';
import 'package:notezone/app/gateway/auth_repository.dart';
import 'package:notezone/app/gateway/profile_repository.dart';

final appointmentManagerProvider = Provider<AppointmentFacade>(
  (ref) {
    return AppointmentManager(
        authInterface: ref.watch(authRepositoryProvider),
        profileInterface: ref.watch(profileRepositoryProvider),
        appointmentInterface: ref.watch(appointmentRepositoryProvider));
  },
);

class AppointmentManager implements AppointmentFacade {
  const AppointmentManager({
    required this.authInterface,
    required this.profileInterface,
    required this.appointmentInterface,
  });
  final AuthRepositoryInterface authInterface;
  final ProfileRepositoryInterface profileInterface;
  final AppointmentRepositoryInterface appointmentInterface;
  @override
  Future<void> create({
    required String projectUid,
    required String title,
    required DateTime start,
    required DateTime end,
  }) async {
    UserEntity currentUser = authInterface.getCurrentUser();
    ProfileEntity currentProfile =
        await profileInterface.findByUid(profileUid: currentUser.uid).first;
    return await appointmentInterface.create(
        projectUid: projectUid,
        title: title,
        creatorUid: currentProfile.uid,
        creatorFirstname: currentProfile.firstname,
        creatorLastname: currentProfile.lastname,
        start: start.toIso8601String(),
        end: end.toIso8601String(),
        createdAt: DateTime.now().toIso8601String(),
        modificatedAt: DateTime.now().toIso8601String());
  }

  @override
  Future<void> deleteByUid(
      {required String projectUid, required String appointmentUid}) {
    return appointmentInterface.deleteByUid(
      projectUid: projectUid,
      appointmentUid: appointmentUid,
    );
  }

  @override
  Stream<List<AppointmentEntity>> findAllByProjectUid(
      {required String projectUid}) {
    return appointmentInterface.findAllByProjectUid(
      projectUid: projectUid,
    );
  }

  @override
  Stream<AppointmentEntity> findByUid(
      {required String projectUid, required String appointmentUid}) {
    return appointmentInterface.findByUid(
      projectUid: projectUid,
      appointmentUid: appointmentUid,
    );
  }

  @override
  Future<void> update(
      {required String projectUid,
      required String appointmentUid,
      required String title}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
