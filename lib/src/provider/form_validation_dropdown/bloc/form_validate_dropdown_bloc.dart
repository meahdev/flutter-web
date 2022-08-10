import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_validate_dropdown_event.dart';
part 'form_validate_dropdown_state.dart';
part 'form_validate_dropdown_bloc.freezed.dart';

class FormValidateDropdownBloc
    extends Bloc<FormValidateDropdownEvent, FormValidateDropdownState> {
  FormValidateDropdownBloc() : super(const _Initial()) {
    on<FormValidateDropdownEvent>((event, emit) {
      if (event is _OnTap) {
        emit(_Success(event.value));
      }
    });
  }
}
