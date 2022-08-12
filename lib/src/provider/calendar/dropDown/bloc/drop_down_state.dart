part of 'drop_down_bloc.dart';

@freezed
class DropDownState with _$DropDownState {
  const factory DropDownState.initial() = _Initial;
  const factory DropDownState.loaded(String dropDownValue) = _Loaded;
}
