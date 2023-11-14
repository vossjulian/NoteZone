import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/project_entity.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<ProjectEntity> projects,
    @Default(null) ProjectEntity? selectedProject,
    @Default(false) bool isLoading,
  }) = _HomeState;
}
