part of 'form_textfield_counter_bloc.dart';

@freezed
class FormTextfieldCounterEvent with _$FormTextfieldCounterEvent {
  const factory FormTextfieldCounterEvent.increment(int value) = _Increment;
  const factory FormTextfieldCounterEvent.decrement(int value) = _Decrement;
}
