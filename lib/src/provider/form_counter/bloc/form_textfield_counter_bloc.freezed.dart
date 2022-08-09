// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_textfield_counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormTextfieldCounterEvent {
  int get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) increment,
    required TResult Function(int value) decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? increment,
    TResult Function(int value)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? increment,
    TResult Function(int value)? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormTextfieldCounterEventCopyWith<FormTextfieldCounterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormTextfieldCounterEventCopyWith<$Res> {
  factory $FormTextfieldCounterEventCopyWith(FormTextfieldCounterEvent value,
          $Res Function(FormTextfieldCounterEvent) then) =
      _$FormTextfieldCounterEventCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$FormTextfieldCounterEventCopyWithImpl<$Res>
    implements $FormTextfieldCounterEventCopyWith<$Res> {
  _$FormTextfieldCounterEventCopyWithImpl(this._value, this._then);

  final FormTextfieldCounterEvent _value;
  // ignore: unused_field
  final $Res Function(FormTextfieldCounterEvent) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_IncrementCopyWith<$Res>
    implements $FormTextfieldCounterEventCopyWith<$Res> {
  factory _$$_IncrementCopyWith(
          _$_Increment value, $Res Function(_$_Increment) then) =
      __$$_IncrementCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$$_IncrementCopyWithImpl<$Res>
    extends _$FormTextfieldCounterEventCopyWithImpl<$Res>
    implements _$$_IncrementCopyWith<$Res> {
  __$$_IncrementCopyWithImpl(
      _$_Increment _value, $Res Function(_$_Increment) _then)
      : super(_value, (v) => _then(v as _$_Increment));

  @override
  _$_Increment get _value => super._value as _$_Increment;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Increment(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Increment implements _Increment {
  const _$_Increment(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'FormTextfieldCounterEvent.increment(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Increment &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_IncrementCopyWith<_$_Increment> get copyWith =>
      __$$_IncrementCopyWithImpl<_$_Increment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) increment,
    required TResult Function(int value) decrement,
  }) {
    return increment(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? increment,
    TResult Function(int value)? decrement,
  }) {
    return increment?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? increment,
    TResult Function(int value)? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class _Increment implements FormTextfieldCounterEvent {
  const factory _Increment(final int value) = _$_Increment;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_IncrementCopyWith<_$_Increment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecrementCopyWith<$Res>
    implements $FormTextfieldCounterEventCopyWith<$Res> {
  factory _$$_DecrementCopyWith(
          _$_Decrement value, $Res Function(_$_Decrement) then) =
      __$$_DecrementCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$$_DecrementCopyWithImpl<$Res>
    extends _$FormTextfieldCounterEventCopyWithImpl<$Res>
    implements _$$_DecrementCopyWith<$Res> {
  __$$_DecrementCopyWithImpl(
      _$_Decrement _value, $Res Function(_$_Decrement) _then)
      : super(_value, (v) => _then(v as _$_Decrement));

  @override
  _$_Decrement get _value => super._value as _$_Decrement;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Decrement(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Decrement implements _Decrement {
  const _$_Decrement(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'FormTextfieldCounterEvent.decrement(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Decrement &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_DecrementCopyWith<_$_Decrement> get copyWith =>
      __$$_DecrementCopyWithImpl<_$_Decrement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) increment,
    required TResult Function(int value) decrement,
  }) {
    return decrement(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? increment,
    TResult Function(int value)? decrement,
  }) {
    return decrement?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? increment,
    TResult Function(int value)? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class _Decrement implements FormTextfieldCounterEvent {
  const factory _Decrement(final int value) = _$_Decrement;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_DecrementCopyWith<_$_Decrement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormTextfieldCounterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormTextfieldCounterStateCopyWith<$Res> {
  factory $FormTextfieldCounterStateCopyWith(FormTextfieldCounterState value,
          $Res Function(FormTextfieldCounterState) then) =
      _$FormTextfieldCounterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormTextfieldCounterStateCopyWithImpl<$Res>
    implements $FormTextfieldCounterStateCopyWith<$Res> {
  _$FormTextfieldCounterStateCopyWithImpl(this._value, this._then);

  final FormTextfieldCounterState _value;
  // ignore: unused_field
  final $Res Function(FormTextfieldCounterState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FormTextfieldCounterStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FormTextfieldCounterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int value) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FormTextfieldCounterState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$FormTextfieldCounterStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Success(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'FormTextfieldCounterState.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int value) success,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? success,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements FormTextfieldCounterState {
  const factory _Success(final int value) = _$_Success;

  int get value;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
