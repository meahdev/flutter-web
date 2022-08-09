part of 'form_dropdown_bloc.dart';

@freezed
class FormDropdownEvent with _$FormDropdownEvent {
  const factory FormDropdownEvent.onTap(String value) = _OnTap;
}