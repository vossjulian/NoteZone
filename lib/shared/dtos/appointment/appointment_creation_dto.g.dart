// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_creation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentCreationDTO _$$_AppointmentCreationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_AppointmentCreationDTO(
      title: json['title'] as String,
      creatorUid: json['creatorUid'] as String,
      creatorFirstname: json['creatorFirstname'] as String,
      creatorLastname: json['creatorLastname'] as String,
      start: json['start'] as String,
      end: json['end'] as String,
      createdAt: json['createdAt'] as String,
      modificatedAt: json['modificatedAt'] as String,
    );

Map<String, dynamic> _$$_AppointmentCreationDTOToJson(
        _$_AppointmentCreationDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'creatorUid': instance.creatorUid,
      'creatorFirstname': instance.creatorFirstname,
      'creatorLastname': instance.creatorLastname,
      'start': instance.start,
      'end': instance.end,
      'createdAt': instance.createdAt,
      'modificatedAt': instance.modificatedAt,
    };
