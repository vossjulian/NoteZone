import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
//part 'profile_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    @Default("") String uid,
    @Default("") String email,
    @Default(false) bool isAuthenticated,
  }) = _UserEntity;
}
