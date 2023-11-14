import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_entity.freezed.dart';
//part 'profile_entity.g.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  factory ProfileEntity({
    required String uid,
    required String firstname,
    required String lastname,
    required String email,
    required DateTime createdAt,
    required DateTime modificatedAt,
  }) = _ProfileEntity;
}
