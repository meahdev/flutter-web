part of 'form_dropdown_bloc.dart';

@freezed
class FormDropdownState with _$FormDropdownState {
  const factory FormDropdownState.initial() = _Initial;
  const factory FormDropdownState.success(String value) = _Success;
}
