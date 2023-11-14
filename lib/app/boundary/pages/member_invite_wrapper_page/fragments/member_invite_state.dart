import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/shared/utils/form_input_data.dart';

part 'member_invite_state.freezed.dart';

@freezed
class MemberInviteState with _$MemberInviteState {
  factory MemberInviteState({
    required GlobalKey<FormState> formKey,
    required FormInputData email,
    @Default("") String projectUid,
    @Default("") String projectTitle,
    @Default(false) bool isLoading,
    @Default(false) bool success,
    @Default(false) bool error,
  }) = _MemberInviteState;
}
