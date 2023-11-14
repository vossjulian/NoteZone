// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvitationDTO _$$_InvitationDTOFromJson(Map<String, dynamic> json) =>
    _$_InvitationDTO(
      projectTitle: json['projectTitle'] as String,
      projectUid: json['projectUid'] as String,
      receiverUid: json['receiverUid'] as String,
      receiverEmail: json['receiverEmail'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_InvitationDTOToJson(_$_InvitationDTO instance) =>
    <String, dynamic>{
      'projectTitle': instance.projectTitle,
      'projectUid': instance.projectUid,
      'receiverUid': instance.receiverUid,
      'receiverEmail': instance.receiverEmail,
      'createdAt': instance.createdAt.toIso8601String(),
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
