import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_textfield_counter_event.dart';
part 'form_textfield_counter_state.dart';
part 'form_textfield_counter_bloc.freezed.dart';

class FormTextfieldCounterBloc
    extends Bloc<FormTextfieldCounterEvent, FormTextfieldCounterState> {
  FormTextfieldCounterBloc() : super(const _Initial()) {
    on<FormTextfieldCounterEvent>((event, emit) {
      if (event is _Increment) {
        emit(_Success(event.value + 1));
      } else if (event is _Decrement) {
        emit(_Success(event.value - 1));
      }
    });
  }
}

