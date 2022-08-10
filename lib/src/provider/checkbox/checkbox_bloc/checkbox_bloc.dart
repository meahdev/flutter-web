// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkbox_event.dart';
part 'checkbox_state.dart';
part 'checkbox_bloc.freezed.dart';

class CheckboxBloc extends Bloc<CheckboxEvent, CheckboxState> {
  CheckboxBloc() : super(const _Success(false)) {
    on<CheckboxEvent>((event, emit) {
      if (event is _StartCheckbox) {
        emit(_Success(event.isChecked));
      }
    });
  }
}
