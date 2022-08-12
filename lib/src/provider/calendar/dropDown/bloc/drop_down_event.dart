part of 'drop_down_bloc.dart';

@freezed
class DropDownEvent with _$DropDownEvent {
  const factory DropDownEvent.started({required String dropDownValue}) =
      _Started;
}
