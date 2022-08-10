part of 'form_validate_dropdown_bloc.dart';

@freezed
class FormValidateDropdownEvent with _$FormValidateDropdownEvent {
  const factory FormValidateDropdownEvent.onTap(String value) = _OnTap;
}
