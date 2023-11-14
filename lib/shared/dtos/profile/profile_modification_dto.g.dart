// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_modification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModificationDTO _$$_ProfileModificationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileModificationDTO(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_ProfileModificationDTOToJson(
        _$_ProfileModificationDTO instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
