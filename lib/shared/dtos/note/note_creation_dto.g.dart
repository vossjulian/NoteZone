// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_creation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteCreationDTO _$$_NoteCreationDTOFromJson(Map<String, dynamic> json) =>
    _$_NoteCreationDTO(
      title: json['title'] as String,
      content: json['content'] as String,
      creatorUid: json['creatorUid'] as String,
      creatorFirstname: json['creatorFirstname'] as String,
      creatorLastname: json['creatorLastname'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_NoteCreationDTOToJson(_$_NoteCreationDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'creatorUid': instance.creatorUid,
      'creatorFirstname': instance.creatorFirstname,
      'creatorLastname': instance.creatorLastname,
      'createdAt': instance.createdAt.toIso8601String(),
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
