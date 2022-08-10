part of 'form_check_bloc.dart';

@freezed
class FormCheckEvent with _$FormCheckEvent {
  const factory FormCheckEvent.onCheck(bool value) = _OnCheck;
}
