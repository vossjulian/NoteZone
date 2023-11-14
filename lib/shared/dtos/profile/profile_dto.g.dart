// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDTO _$$_ProfileDTOFromJson(Map<String, dynamic> json) =>
    _$_ProfileDTO(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      modificatedAt: DateTime.parse(json['modificatedAt'] as String),
    );

Map<String, dynamic> _$$_ProfileDTOToJson(_$_ProfileDTO instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'createdAt': instance.createdAt.toIso8601String(),
      'modificatedAt': instance.modificatedAt.toIso8601String(),
    };
