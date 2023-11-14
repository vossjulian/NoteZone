// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_creation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvitationCreationDTO _$$_InvitationCreationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_InvitationCreationDTO(
      projectTitle: json['projectTitle'] as String,
      projectUid: json['projectUid'] as String,
      receiverEmail: json['receiverEmail'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_InvitationCreationDTOToJson(
        _$_InvitationCreationDTO instance) =>
    <String, dynamic>{
      'projectTitle': instance.projectTitle,
      'projectUid': instance.projectUid,
      'receiverEmail': instance.receiverEmail,
      'createdAt': instance.createdAt.toIso8601String(),
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
