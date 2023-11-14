// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_creation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileCreationDTO _$$_ProfileCreationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileCreationDTO(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_ProfileCreationDTOToJson(
        _$_ProfileCreationDTO instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'createdAt': instance.createdAt.toIso8601String(),
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
