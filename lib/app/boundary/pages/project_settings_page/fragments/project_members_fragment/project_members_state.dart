import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/profile_entity.dart';

part 'project_members_state.freezed.dart';

@freezed
class ProjectMembersState with _$ProjectMembersState {
  factory ProjectMembersState({
    @Default([]) List<ProfileEntity> members,
    @Default(false) bool isLoading,
  }) = _ProjectMembersState;
}
