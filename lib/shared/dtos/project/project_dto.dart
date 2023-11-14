import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/project_entity.dart';

part 'project_dto.freezed.dart';
part 'project_dto.g.dart';

@freezed
class ProjectDTO with _$ProjectDTO {
  const factory ProjectDTO({
    required String title,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _ProjectDTO;

  factory ProjectDTO.fromJson(Map<String, Object?> json) =>
      _$ProjectDTOFromJson(json);

  static ProjectEntity toEntity(ProjectDTO dto, String uid) {
    return ProjectEntity(
      uid: uid,
      title: dto.title,
      creatorUid: dto.creatorUid,
      creatorFirstname: dto.creatorFirstname,
      creatorLastname: dto.creatorLastname,
      createdAt: dto.createdAt,
      modificatedAt: dto.modificatedAt,
    );
  }
}
