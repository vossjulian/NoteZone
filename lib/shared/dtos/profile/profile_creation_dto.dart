import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_creation_dto.freezed.dart';
part 'profile_creation_dto.g.dart';

@freezed
class ProfileCreationDTO with _$ProfileCreationDTO {
  const factory ProfileCreationDTO({
    required String firstname,
    required String lastname,
    required String email,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _ProfileCreationDTO;

  factory ProfileCreationDTO.fromJson(Map<String, Object?> json) =>
      _$ProfileCreationDTOFromJson(json);
}
