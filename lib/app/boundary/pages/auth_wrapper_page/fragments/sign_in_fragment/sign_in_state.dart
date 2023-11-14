import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/shared/utils/form_input_data.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  factory SignInState({
    required GlobalKey<FormState> formKey,
    required FormInputData email,
    required FormInputData password,
    @Default(false) bool isLoading,
    @Default("") String error,
  }) = _SignInState;
}
