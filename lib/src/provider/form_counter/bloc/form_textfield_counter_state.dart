part of 'form_textfield_counter_bloc.dart';

@freezed
class FormTextfieldCounterState with _$FormTextfieldCounterState {
  const factory FormTextfieldCounterState.initial() = _Initial;
  const factory FormTextfieldCounterState.success(int value) = _Success;
}
