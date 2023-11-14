import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/domain/entities/profile_entity.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
class ProfileDTO with _$ProfileDTO {
  const factory ProfileDTO({
    required String firstname,
    required String lastname,
    required String email,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _ProfileDTO;

  factory ProfileDTO.fromJson(Map<String, Object?> json) =>
      _$ProfileDTOFromJson(json);

  static ProfileEntity toEntity(ProfileDTO dto, String uid) {
    return ProfileEntity(
      uid: uid,
      firstname: dto.firstname,
      lastname: dto.lastname,
      email: dto.email,
      createdAt: dto.createdAt,
      modificatedAt: dto.modificatedAt,
    );
  }
}
