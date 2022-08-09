part of 'form_color_bloc.dart';

@freezed
class FormColorEvent with _$FormColorEvent {
  const factory FormColorEvent.changeColor(Color color) = _Changecolor;
}
