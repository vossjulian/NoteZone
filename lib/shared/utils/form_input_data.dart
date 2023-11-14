import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_input_data.freezed.dart';

@freezed
class FormInputData with _$FormInputData {
  factory FormInputData({
    @Default("") String value,
    @Default("") String error,
    @Default(false) bool isValid,
  }) = _FormInputData;
}
