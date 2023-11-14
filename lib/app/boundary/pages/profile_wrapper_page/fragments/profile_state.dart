import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/app/domain/entities/invitation_entity.dart';
import 'package:notezone/app/domain/entities/profile_entity.dart';
import 'package:notezone/shared/utils/form_input_data.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    required GlobalKey<FormState> formKey,
    required FormInputData firstname,
    required FormInputData lastname,
    required FormInputData email,
    @Default([]) List<InvitationEntity> invitations,
    @Default(null) ProfileEntity? currentProfile,
    @Default(false) bool isLoading,
    @Default(false) bool success,
    @Default(false) bool error,
  }) = _ProfileState;
}
