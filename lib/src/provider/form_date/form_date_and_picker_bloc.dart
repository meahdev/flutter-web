import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_date_and_picker_event.dart';
part 'form_date_and_picker_state.dart';
part 'form_date_and_picker_bloc.freezed.dart';

class FormDateAndPickerBloc
    extends Bloc<FormDateAndPickerEvent, FormDateAndPickerState> {
  FormDateAndPickerBloc() : super(const _Initial()) {
    on<FormDateAndPickerEvent>((event, emit) {
      if (event.dateAndtime == null) {
        emit(const _Loaded(''));
      } else {
        emit(_Loaded(event.dateAndtime ?? ''));
      }
    });
  }
}
