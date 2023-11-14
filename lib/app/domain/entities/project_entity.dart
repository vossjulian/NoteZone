import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_entity.freezed.dart';
//part 'profile_entity.g.dart';

@freezed
class ProjectEntity with _$ProjectEntity {
  factory ProjectEntity({
    required String uid,
    required String title,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _ProjectEntity;
}
