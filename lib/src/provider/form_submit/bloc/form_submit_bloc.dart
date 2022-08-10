import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_submit_event.dart';
part 'form_submit_state.dart';
part 'form_submit_bloc.freezed.dart';

class FormSubmitBloc extends Bloc<FormSubmitEvent, FormSubmitState> {
  FormSubmitBloc() : super(const _Initial()) {
    on<FormSubmitEvent>((event, emit) {
      if (event is _OnTap) {
        emit(FormSubmitState.success(event.value));
      }
    });
  }
}
