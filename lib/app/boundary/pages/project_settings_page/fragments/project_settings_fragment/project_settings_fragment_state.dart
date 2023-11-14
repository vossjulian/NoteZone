import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/project_entity.dart';
import 'package:notezone/shared/utils/form_input_data.dart';

part 'project_settings_fragment_state.freezed.dart';

@freezed
class ProjectSettingsFragmentState with _$ProjectSettingsFragmentState {
  factory ProjectSettingsFragmentState({
    required GlobalKey<FormState> formKey,
    required FormInputData title,
    @Default(null) ProjectEntity? currentProject,
    @Default(false) bool isLoading,
    @Default(false) bool success,
    @Default(false) bool error,
  }) = _ProjectSettingsFragmentState;
}
