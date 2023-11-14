// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_modification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteModificationDTO _$$_NoteModificationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_NoteModificationDTO(
      title: json['title'] as String,
      content: json['content'] as String,
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_NoteModificationDTOToJson(
        _$_NoteModificationDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
