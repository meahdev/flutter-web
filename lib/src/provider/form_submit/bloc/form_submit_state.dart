part of 'form_submit_bloc.dart';

@freezed
class FormSubmitState with _$FormSubmitState {
  const factory FormSubmitState.initial() = _Initial;
  const factory FormSubmitState.success(bool value) = _Success;
}
