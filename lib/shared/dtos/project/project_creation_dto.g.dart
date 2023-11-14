// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_creation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectCreationDTO _$$_ProjectCreationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ProjectCreationDTO(
      title: json['title'] as String,
      creatorUid: json['creatorUid'] as String,
      creatorFirstname: json['creatorFirstname'] as String,
      creatorLastname: json['creatorLastname'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_ProjectCreationDTOToJson(
        _$_ProjectCreationDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'creatorUid': instance.creatorUid,
      'creatorFirstname': instance.creatorFirstname,
      'creatorLastname': instance.creatorLastname,
      'members': instance.members,
      'createdAt': instance.createdAt.toIso8601String(),
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
