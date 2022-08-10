import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_dropdown_event.dart';
part 'form_dropdown_state.dart';
part 'form_dropdown_bloc.freezed.dart';

class FormDropdownBloc extends Bloc<FormDropdownEvent, FormDropdownState> {
  FormDropdownBloc() : super(const _Initial()) {
    on<FormDropdownEvent>((event, emit) {
      if (event is _OnTap) {
        emit(_Success(event.value));
      }
    });
  }
}


