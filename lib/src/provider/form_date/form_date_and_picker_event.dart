part of 'form_date_and_picker_bloc.dart';

@freezed
class FormDateAndPickerEvent with _$FormDateAndPickerEvent {
  const factory FormDateAndPickerEvent.started({
     String? dateAndtime,
  }) = _Started;
}
