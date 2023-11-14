// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectDTO _$$_ProjectDTOFromJson(Map<String, dynamic> json) =>
    _$_ProjectDTO(
      title: json['title'] as String,
      creatorUid: json['creatorUid'] as String,
      creatorFirstname: json['creatorFirstname'] as String,
      creatorLastname: json['creatorLastname'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_ProjectDTOToJson(_$_ProjectDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'creatorUid': instance.creatorUid,
      'creatorFirstname': instance.creatorFirstname,
      'creatorLastname': instance.creatorLastname,
      'createdAt': instance.createdAt.toIso8601String(),
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
