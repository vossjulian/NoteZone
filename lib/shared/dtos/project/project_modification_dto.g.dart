// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_modification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectModificationDTO _$$_ProjectModificationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ProjectModificationDTO(
      title: json['title'] as String,
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_ProjectModificationDTOToJson(
        _$_ProjectModificationDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
