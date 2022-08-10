import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_check_event.dart';
part 'form_check_state.dart';
part 'form_check_bloc.freezed.dart';

class FormCheckBloc extends Bloc<FormCheckEvent, FormCheckState> {
  FormCheckBloc() : super(const _Initial()) {
    on<FormCheckEvent>((event, emit) {
      if (event is _OnCheck) {
        emit(FormCheckState.success(event.value));
      }
    });
  }
}
