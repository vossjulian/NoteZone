import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notezone/shared/utils/form_input_data.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    required GlobalKey<FormState> formKey,
    required FormInputData firstname,
    required FormInputData lastname,
    required FormInputData email,
    required FormInputData password,
    required FormInputData confirmPassword,
    @Default(false) bool isLoading,
    @Default("") String error,
  }) = _SignUpState;
}
