import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/domain/entities/note_entity.dart';

part 'note_dto.freezed.dart';
part 'note_dto.g.dart';

@freezed
class NoteDTO with _$NoteDTO {
  const factory NoteDTO({
    required String title,
    required String content,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
    required DateTime modificatedAt,
    required DateTime createdAt,
  }) = _NoteDTO;

  factory NoteDTO.fromJson(Map<String, Object?> json) =>
      _$NoteDTOFromJson(json);

  static NoteEntity toEntity(NoteDTO dto, String uid) {
    return NoteEntity(
      uid: uid,
      title: dto.title,
      content: dto.content,
      creatorUid: dto.creatorUid,
      creatorFirstname: dto.creatorFirstname,
      creatorLastname: dto.creatorLastname,
      createdAt: dto.createdAt,
      modificatedAt: dto.modificatedAt,
    );
  }
}
