part of 'form_check_bloc.dart';

@freezed
class FormCheckState with _$FormCheckState {
  const factory FormCheckState.initial() = _Initial;
  const factory FormCheckState.success(bool value) = _Success;
}
