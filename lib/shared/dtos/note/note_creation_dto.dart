import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_creation_dto.freezed.dart';
part 'note_creation_dto.g.dart';

@freezed
class NoteCreationDTO with _$NoteCreationDTO {
  const factory NoteCreationDTO({
    required String title,
    required String content,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _NoteCreationDTO;

  factory NoteCreationDTO.fromJson(Map<String, Object?> json) =>
      _$NoteCreationDTOFromJson(json);
}
