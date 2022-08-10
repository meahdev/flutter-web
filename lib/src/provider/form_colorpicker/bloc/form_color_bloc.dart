import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_color_event.dart';
part 'form_color_state.dart';
part 'form_color_bloc.freezed.dart';

class FormColorBloc extends Bloc<FormColorEvent, FormColorState> {
  FormColorBloc() : super(const _Initial()) {
    on<FormColorEvent>((event, emit) {
      if (event is _Changecolor) {
        emit(FormColorState.success(event.color));
      }
    });
  }
}


