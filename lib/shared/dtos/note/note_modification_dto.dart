import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_modification_dto.freezed.dart';
part 'note_modification_dto.g.dart';

@freezed
class NoteModificationDTO with _$NoteModificationDTO {
  const factory NoteModificationDTO({
    required String title,
    required String content,
    required DateTime modificatedAt,
  }) = _NoteModificationDTO;

  factory NoteModificationDTO.fromJson(Map<String, Object?> json) =>
      _$NoteModificationDTOFromJson(json);
}
