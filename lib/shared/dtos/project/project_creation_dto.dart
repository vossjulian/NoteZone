import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_creation_dto.freezed.dart';
part 'project_creation_dto.g.dart';

@freezed
class ProjectCreationDTO with _$ProjectCreationDTO {
  const factory ProjectCreationDTO({
    required String title,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
    required List<String> members,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _ProjectCreationDTO;

  factory ProjectCreationDTO.fromJson(Map<String, Object?> json) =>
      _$ProjectCreationDTOFromJson(json);
}
