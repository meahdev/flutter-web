import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_down_event.dart';
part 'drop_down_state.dart';
part 'drop_down_bloc.freezed.dart';

class DropDownBloc extends Bloc<DropDownEvent, DropDownState> {
  DropDownBloc() : super(const _Initial()) {
    on<DropDownEvent>((event, emit) {
      emit(const _Initial());
      emit(_Loaded(event.dropDownValue));
    });
  }
}

final DropDownBloc dropDownBloc = DropDownBloc();
