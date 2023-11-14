// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_modification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvitationModificationDTO _$$_InvitationModificationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_InvitationModificationDTO(
      hasAccepted: json['hasAccepted'] as bool,
      hasRejected: json['hasRejected'] as bool,
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_InvitationModificationDTOToJson(
        _$_InvitationModificationDTO instance) =>
    <String, dynamic>{
      'hasAccepted': instance.hasAccepted,
      'hasRejected': instance.hasRejected,
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
