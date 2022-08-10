part of 'form_submit_bloc.dart';

@freezed
class FormSubmitEvent with _$FormSubmitEvent {
  const factory FormSubmitEvent.onTap(bool value) = _OnTap;
}
