part of 'form_color_bloc.dart';

@freezed
class FormColorState with _$FormColorState {
  const factory FormColorState.initial() = _Initial;
  const factory FormColorState.success(Color color) = _Success;
}
