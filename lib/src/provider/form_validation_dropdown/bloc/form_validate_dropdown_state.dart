part of 'form_validate_dropdown_bloc.dart';

@freezed
class FormValidateDropdownState with _$FormValidateDropdownState {
  const factory FormValidateDropdownState.initial() = _Initial;
  const factory FormValidateDropdownState.success(String value) = _Success;
}
