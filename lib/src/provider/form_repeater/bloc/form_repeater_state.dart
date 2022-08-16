part of 'form_repeater_bloc.dart';

@freezed
class FormRepeaterState with _$FormRepeaterState {
  const factory FormRepeaterState.initial() = _Initial;
  const factory FormRepeaterState.addSuceess(
      String fileName, Widget web, Widget mobileNtab) = _AddSuccess;
  const factory FormRepeaterState.deleteSuceess(int index) = _DeleteSuccess;
}
