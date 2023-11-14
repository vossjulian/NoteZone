import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_modification_dto.freezed.dart';
part 'profile_modification_dto.g.dart';

@freezed
class ProfileModificationDTO with _$ProfileModificationDTO {
  const factory ProfileModificationDTO({
    required String firstname,
    required String lastname,
    required String email,
    required DateTime modificatedAt,
  }) = _ProfileModificationDTO;

  factory ProfileModificationDTO.fromJson(Map<String, Object?> json) =>
      _$ProfileModificationDTOFromJson(json);
}
