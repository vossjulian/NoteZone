// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentDTO _$$_AppointmentDTOFromJson(Map<String, dynamic> json) =>
    _$_AppointmentDTO(
      title: json['title'] as String,
      creatorUid: json['creatorUid'] as String,
      creatorFirstname: json['creatorFirstname'] as String,
      creatorLastname: json['creatorLastname'] as String,
      start: json['start'] as String,
      end: json['end'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_AppointmentDTOToJson(_$_AppointmentDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'creatorUid': instance.creatorUid,
      'creatorFirstname': instance.creatorFirstname,
      'creatorLastname': instance.creatorLastname,
      'start': instance.start,
      'end': instance.end,
      'createdAt': instance.createdAt.toIso8601String(),
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
