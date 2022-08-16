import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_repeater_event.dart';
part 'form_repeater_state.dart';
part 'form_repeater_bloc.freezed.dart';

class FormRepeaterBloc extends Bloc<FormRepeaterEvent, FormRepeaterState> {
  FormRepeaterBloc() : super(const _Initial()) {
    on<FormRepeaterEvent>((event, emit) {
      if (event is _Add) {
        emit(FormRepeaterState.addSuceess(
            event.fileName, event.web, event.mobileNtab));
      } else if (event is _Delete) {
        emit(FormRepeaterState.deleteSuceess(event.index));
      }
    });
  }
}
