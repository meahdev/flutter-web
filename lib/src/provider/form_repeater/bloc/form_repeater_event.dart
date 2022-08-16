part of 'form_repeater_bloc.dart';

@freezed
class FormRepeaterEvent with _$FormRepeaterEvent {
  const factory FormRepeaterEvent.add(
      String fileName, Widget web, Widget mobileNtab) = _Add;
  const factory FormRepeaterEvent.delete(int index) = _Delete;
}
