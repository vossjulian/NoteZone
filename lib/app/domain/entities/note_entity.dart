import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_entity.freezed.dart';
//part 'profile_entity.g.dart';

@freezed
class NoteEntity with _$NoteEntity {
  factory NoteEntity({
    required String uid,
    required String title,
    required String content,
    required String creatorUid,
    required String creatorFirstname,
    required String creatorLastname,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _NoteEntity;
}
