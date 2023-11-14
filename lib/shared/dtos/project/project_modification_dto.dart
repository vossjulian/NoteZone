import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_modification_dto.freezed.dart';
part 'project_modification_dto.g.dart';

@freezed
class ProjectModificationDTO with _$ProjectModificationDTO {
  const factory ProjectModificationDTO({
    required String title,
    required DateTime modificatedAt,
  }) = _ProjectModificationDTO;

  factory ProjectModificationDTO.fromJson(Map<String, Object?> json) =>
      _$ProjectModificationDTOFromJson(json);
}
