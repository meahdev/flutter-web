part of 'form_date_and_picker_bloc.dart';

@freezed
class FormDateAndPickerState with _$FormDateAndPickerState {
  const factory FormDateAndPickerState.initial() = _Initial;
  const factory FormDateAndPickerState.loaded(String dateAndtime) = _Loaded;
}
