// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_wizard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormWizardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, int clickCount) nextClick,
    required TResult Function(int index) previousClick,
    required TResult Function(bool isFinish) finishClick,
    required TResult Function(int index) stepperClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, int clickCount)? nextClick,
    TResult Function(int index)? previousClick,
    TResult Function(bool isFinish)? finishClick,
    TResult Function(int index)? stepperClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, int clickCount)? nextClick,
    TResult Function(int index)? previousClick,
    TResult Function(bool isFinish)? finishClick,
    TResult Function(int index)? stepperClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NextClick value) nextClick,
    required TResult Function(_PreviousClick value) previousClick,
    required TResult Function(_FinishClick value) finishClick,
    required TResult Function(_StepperClick value) stepperClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NextClick value)? nextClick,
    TResult Function(_PreviousClick value)? previousClick,
    TResult Function(_FinishClick value)? finishClick,
    TResult Function(_StepperClick value)? stepperClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NextClick value)? nextClick,
    TResult Function(_PreviousClick value)? previousClick,
    TResult Function(_FinishClick value)? finishClick,
    TResult Function(_StepperClick value)? stepperClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormWizardEventCopyWith<$Res> {
  factory $FormWizardEventCopyWith(
          FormWizardEvent value, $Res Function(FormWizardEvent) then) =
      _$FormWizardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormWizardEventCopyWithImpl<$Res>
    implements $FormWizardEventCopyWith<$Res> {
  _$FormWizardEventCopyWithImpl(this._value, this._then);

  final FormWizardEvent _value;
  // ignore: unused_field
  final $Res Function(FormWizardEvent) _then;
}

/// @nodoc
abstract class _$$_NextClickCopyWith<$Res> {
  factory _$$_NextClickCopyWith(
          _$_NextClick value, $Res Function(_$_NextClick) then) =
      __$$_NextClickCopyWithImpl<$Res>;
  $Res call({int index, int clickCount});
}

/// @nodoc
class __$$_NextClickCopyWithImpl<$Res>
    extends _$FormWizardEventCopyWithImpl<$Res>
    implements _$$_NextClickCopyWith<$Res> {
  __$$_NextClickCopyWithImpl(
      _$_NextClick _value, $Res Function(_$_NextClick) _then)
      : super(_value, (v) => _then(v as _$_NextClick));

  @override
  _$_NextClick get _value => super._value as _$_NextClick;

  @override
  $Res call({
    Object? index = freezed,
    Object? clickCount = freezed,
  }) {
    return _then(_$_NextClick(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      clickCount == freezed
          ? _value.clickCount
          : clickCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NextClick implements _NextClick {
  const _$_NextClick(this.index, this.clickCount);

  @override
  final int index;
  @override
  final int clickCount;

  @override
  String toString() {
    return 'FormWizardEvent.nextClick(index: $index, clickCount: $clickCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextClick &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality()
                .equals(other.clickCount, clickCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(clickCount));

  @JsonKey(ignore: true)
  @override
  _$$_NextClickCopyWith<_$_NextClick> get copyWith =>
      __$$_NextClickCopyWithImpl<_$_NextClick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, int clickCount) nextClick,
    required TResult Function(int index) previousClick,
    required TResult Function(bool isFinish) finishClick,
    required TResult Function(int index) stepperClick,
  }) {
    return nextClick(index, clickCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, int clickCount)? nextClick,
    TResult Function(int index)? previousClick,
    TResult Function(bool isFinish)? finishClick,
    TResult Function(int index)? stepperClick,
  }) {
    return nextClick?.call(index, clickCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, int clickCount)? nextClick,
    TResult Function(int index)? previousClick,
    TResult Function(bool isFinish)? finishClick,
    TResult Function(int index)? stepperClick,
    required TResult orElse(),
  }) {
    if (nextClick != null) {
      return nextClick(index, clickCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NextClick value) nextClick,
    required TResult Function(_PreviousClick value) previousClick,
    required TResult Function(_FinishClick value) finishClick,
    required TResult Function(_StepperClick value) stepperClick,
  }) {
    return nextClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NextClick value)? nextClick,
    TResult Function(_PreviousClick value)? previousClick,
    TResult Function(_FinishClick value)? finishClick,
    TResult Function(_StepperClick value)? stepperClick,
  }) {
    return nextClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NextClick value)? nextClick,
    TResult Function(_PreviousClick value)? previousClick,
    TResult Function(_FinishClick value)? finishClick,
    TResult Function(_StepperClick value)? stepperClick,
    required TResult orElse(),
  }) {
    if (nextClick != null) {
      return nextClick(this);
    }
    return orElse();
  }
}

abstract class _NextClick implements FormWizardEvent {
  const factory _NextClick(final int index, final int clickCount) =
      _$_NextClick;

  int get index;
  int get clickCount;
  @JsonKey(ignore: true)
  _$$_NextClickCopyWith<_$_NextClick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PreviousClickCopyWith<$Res> {
  factory _$$_PreviousClickCopyWith(
          _$_PreviousClick value, $Res Function(_$_PreviousClick) then) =
      __$$_PreviousClickCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_PreviousClickCopyWithImpl<$Res>
    extends _$FormWizardEventCopyWithImpl<$Res>
    implements _$$_PreviousClickCopyWith<$Res> {
  __$$_PreviousClickCopyWithImpl(
      _$_PreviousClick _value, $Res Function(_$_PreviousClick) _then)
      : super(_value, (v) => _then(v as _$_PreviousClick));

  @override
  _$_PreviousClick get _value => super._value as _$_PreviousClick;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_PreviousClick(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PreviousClick implements _PreviousClick {
  const _$_PreviousClick(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'FormWizardEvent.previousClick(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviousClick &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_PreviousClickCopyWith<_$_PreviousClick> get copyWith =>
      __$$_PreviousClickCopyWithImpl<_$_PreviousClick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, int clickCount) nextClick,
    required TResult Function(int index) previousClick,
    required TResult Function(bool isFinish) finishClick,
    required TResult Function(int index) stepperClick,
  }) {
    return previousClick(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, int clickCount)? nextClick,
    TResult Function(int index)? previousClick,
    TResult Function(bool isFinish)? finishClick,
    TResult Function(int index)? stepperClick,
  }) {
    return previousClick?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, int clickCount)? nextClick,
    TResult Function(int index)? previousClick,
    TResult Function(bool isFinish)? finishClick,
    TResult Function(int index)? stepperClick,
    required TResult orElse(),
  }) {
    if (previousClick != null) {
      return previousClick(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NextClick value) nextClick,
    required TResult Function(_PreviousClick value) previousClick,
    required TResult Function(_FinishClick value) finishClick,
    required TResult Function(_StepperClick value) stepperClick,
  }) {
    return previousClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NextClick value)? nextClick,
    TResult Function(_PreviousClick value)? previousClick,
    TResult Function(_FinishClick value)? finishClick,
    TResult Function(_StepperClick value)? stepperClick,
  }) {
    return previousClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NextClick value)? nextClick,
    TResult Function(_PreviousClick value)? previousClick,
    TResult Function(_FinishClick value)? finishClick,
    TResult Function(_StepperClick value)? stepperClick,
    required TResult orElse(),
  }) {
    if (previousClick != null) {
      return previousClick(this);
    }
    return orElse();
  }
}

abstract class _PreviousClick implements FormWizardEvent {
  const factory _PreviousClick(final int index) = _$_PreviousClick;

  int get index;
  @JsonKey(ignore: true)
  _$$_PreviousClickCopyWith<_$_PreviousClick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishClickCopyWith<$Res> {
  factory _$$_FinishClickCopyWith(
          _$_FinishClick value, $Res Function(_$_FinishClick) then) =
      __$$_FinishClickCopyWithImpl<$Res>;
  $Res call({bool isFinish});
}

/// @nodoc
class __$$_FinishClickCopyWithImpl<$Res>
    extends _$FormWizardEventCopyWithImpl<$Res>
    implements _$$_FinishClickCopyWith<$Res> {
  __$$_FinishClickCopyWithImpl(
      _$_FinishClick _value, $Res Function(_$_FinishClick) _then)
      : super(_value, (v) => _then(v as _$_FinishClick));

  @override
  _$_FinishClick get _value => super._value as _$_FinishClick;

  @override
  $Res call({
    Object? isFinish = freezed,
  }) {
    return _then(_$_FinishClick(
      isFinish == freezed
          ? _value.isFinish
          : isFinish // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FinishClick implements _FinishClick {
  const _$_FinishClick(this.isFinish);

  @override
  final bool isFinish;

  @override
  String toString() {
    return 'FormWizardEvent.finishClick(isFinish: $isFinish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinishClick &&
            const DeepCollectionEquality().equals(other.isFinish, isFinish));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFinish));

  @JsonKey(ignore: true)
  @override
  _$$_FinishClickCopyWith<_$_FinishClick> get copyWith =>
      __$$_FinishClickCopyWithImpl<_$_FinishClick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, int clickCount) nextClick,
    required TResult Function(int index) previousClick,
    required TResult Function(bool isFinish) finishClick,
    required TResult Function(int index) stepperClick,
  }) {
    return finishClick(isFinish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, int clickCount)? nextClick,
    TResult Function(int index)? previousClick,
    TResult Function(bool isFinish)? finishClick,
    TResult Function(int index)? stepperClick,
  }) {
    return finishClick?.call(isFinish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, int clickCount)? nextClick,
    TResult Function(int index)? previousClick,
    TResult Function(bool isFinish)? finishClick,
    TResult Function(int index)? stepperClick,
    required TResult orElse(),
  }) {
    if (finishClick != null) {
      return finishClick(isFinish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NextClick value) nextClick,
    required TResult Function(_PreviousClick value) previousClick,
    required TResult Function(_FinishClick value) finishClick,
    required TResult Function(_StepperClick value) stepperClick,
  }) {
    return finishClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NextClick value)? nextClick,
    TResult Function(_PreviousClick value)? previousClick,
    TResult Function(_FinishClick value)? finishClick,
    TResult Function(_StepperClick value)? stepperClick,
  }) {
    return finishClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NextClick value)? nextClick,
    TResult Function(_PreviousClick value)? previousClick,
    TResult Function(_FinishClick value)? finishClick,
    TResult Function(_StepperClick value)? stepperClick,
    required TResult orElse(),
  }) {
    if (finishClick != null) {
      return finishClick(this);
    }
    return orElse();
  }
}

abstract class _FinishClick implements FormWizardEvent {
  const factory _FinishClick(final bool isFinish) = _$_FinishClick;

  bool get isFinish;
  @JsonKey(ignore: true)
  _$$_FinishClickCopyWith<_$_FinishClick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StepperClickCopyWith<$Res> {
  factory _$$_StepperClickCopyWith(
          _$_StepperClick value, $Res Function(_$_StepperClick) then) =
      __$$_StepperClickCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_StepperClickCopyWithImpl<$Res>
    extends _$FormWizardEventCopyWithImpl<$Res>
    implements _$$_StepperClickCopyWith<$Res> {
  __$$_StepperClickCopyWithImpl(
      _$_StepperClick _value, $Res Function(_$_StepperClick) _then)
      : super(_value, (v) => _then(v as _$_StepperClick));

  @override
  _$_StepperClick get _value => super._value as _$_StepperClick;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_StepperClick(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StepperClick implements _StepperClick {
  const _$_StepperClick(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'FormWizardEvent.stepperClick(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepperClick &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_StepperClickCopyWith<_$_StepperClick> get copyWith =>
      __$$_StepperClickCopyWithImpl<_$_StepperClick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, int clickCount) nextClick,
    required TResult Function(int index) previousClick,
    required TResult Function(bool isFinish) finishClick,
    required TResult Function(int index) stepperClick,
  }) {
    return stepperClick(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, int clickCount)? nextClick,
    TResult Function(int index)? previousClick,
    TResult Function(bool isFinish)? finishClick,
    TResult Function(int index)? stepperClick,
  }) {
    return stepperClick?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, int clickCount)? nextClick,
    TResult Function(int index)? previousClick,
    TResult Function(bool isFinish)? finishClick,
    TResult Function(int index)? stepperClick,
    required TResult orElse(),
  }) {
    if (stepperClick != null) {
      return stepperClick(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NextClick value) nextClick,
    required TResult Function(_PreviousClick value) previousClick,
    required TResult Function(_FinishClick value) finishClick,
    required TResult Function(_StepperClick value) stepperClick,
  }) {
    return stepperClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NextClick value)? nextClick,
    TResult Function(_PreviousClick value)? previousClick,
    TResult Function(_FinishClick value)? finishClick,
    TResult Function(_StepperClick value)? stepperClick,
  }) {
    return stepperClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NextClick value)? nextClick,
    TResult Function(_PreviousClick value)? previousClick,
    TResult Function(_FinishClick value)? finishClick,
    TResult Function(_StepperClick value)? stepperClick,
    required TResult orElse(),
  }) {
    if (stepperClick != null) {
      return stepperClick(this);
    }
    return orElse();
  }
}

abstract class _StepperClick implements FormWizardEvent {
  const factory _StepperClick(final int index) = _$_StepperClick;

  int get index;
  @JsonKey(ignore: true)
  _$$_StepperClickCopyWith<_$_StepperClick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormWizardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index, int clickCount) nextSuccess,
    required TResult Function(int index) previousSuccess,
    required TResult Function(bool isFinish) finishSuccess,
    required TResult Function(int index) stepperSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NextSuccess value) nextSuccess,
    required TResult Function(_PreviousSuccess value) previousSuccess,
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_StepperSuccess value) stepperSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormWizardStateCopyWith<$Res> {
  factory $FormWizardStateCopyWith(
          FormWizardState value, $Res Function(FormWizardState) then) =
      _$FormWizardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormWizardStateCopyWithImpl<$Res>
    implements $FormWizardStateCopyWith<$Res> {
  _$FormWizardStateCopyWithImpl(this._value, this._then);

  final FormWizardState _value;
  // ignore: unused_field
  final $Res Function(FormWizardState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$FormWizardStateCopyWithImpl<$Res>
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
    return 'FormWizardState.initial()';
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
    required TResult Function(int index, int clickCount) nextSuccess,
    required TResult Function(int index) previousSuccess,
    required TResult Function(bool isFinish) finishSuccess,
    required TResult Function(int index) stepperSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
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
    required TResult Function(_NextSuccess value) nextSuccess,
    required TResult Function(_PreviousSuccess value) previousSuccess,
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_StepperSuccess value) stepperSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FormWizardState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_NextSuccessCopyWith<$Res> {
  factory _$$_NextSuccessCopyWith(
          _$_NextSuccess value, $Res Function(_$_NextSuccess) then) =
      __$$_NextSuccessCopyWithImpl<$Res>;
  $Res call({int index, int clickCount});
}

/// @nodoc
class __$$_NextSuccessCopyWithImpl<$Res>
    extends _$FormWizardStateCopyWithImpl<$Res>
    implements _$$_NextSuccessCopyWith<$Res> {
  __$$_NextSuccessCopyWithImpl(
      _$_NextSuccess _value, $Res Function(_$_NextSuccess) _then)
      : super(_value, (v) => _then(v as _$_NextSuccess));

  @override
  _$_NextSuccess get _value => super._value as _$_NextSuccess;

  @override
  $Res call({
    Object? index = freezed,
    Object? clickCount = freezed,
  }) {
    return _then(_$_NextSuccess(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      clickCount == freezed
          ? _value.clickCount
          : clickCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NextSuccess implements _NextSuccess {
  const _$_NextSuccess(this.index, this.clickCount);

  @override
  final int index;
  @override
  final int clickCount;

  @override
  String toString() {
    return 'FormWizardState.nextSuccess(index: $index, clickCount: $clickCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextSuccess &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality()
                .equals(other.clickCount, clickCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(clickCount));

  @JsonKey(ignore: true)
  @override
  _$$_NextSuccessCopyWith<_$_NextSuccess> get copyWith =>
      __$$_NextSuccessCopyWithImpl<_$_NextSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index, int clickCount) nextSuccess,
    required TResult Function(int index) previousSuccess,
    required TResult Function(bool isFinish) finishSuccess,
    required TResult Function(int index) stepperSuccess,
  }) {
    return nextSuccess(index, clickCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
  }) {
    return nextSuccess?.call(index, clickCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
    required TResult orElse(),
  }) {
    if (nextSuccess != null) {
      return nextSuccess(index, clickCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NextSuccess value) nextSuccess,
    required TResult Function(_PreviousSuccess value) previousSuccess,
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_StepperSuccess value) stepperSuccess,
  }) {
    return nextSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
  }) {
    return nextSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
    required TResult orElse(),
  }) {
    if (nextSuccess != null) {
      return nextSuccess(this);
    }
    return orElse();
  }
}

abstract class _NextSuccess implements FormWizardState {
  const factory _NextSuccess(final int index, final int clickCount) =
      _$_NextSuccess;

  int get index;
  int get clickCount;
  @JsonKey(ignore: true)
  _$$_NextSuccessCopyWith<_$_NextSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PreviousSuccessCopyWith<$Res> {
  factory _$$_PreviousSuccessCopyWith(
          _$_PreviousSuccess value, $Res Function(_$_PreviousSuccess) then) =
      __$$_PreviousSuccessCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_PreviousSuccessCopyWithImpl<$Res>
    extends _$FormWizardStateCopyWithImpl<$Res>
    implements _$$_PreviousSuccessCopyWith<$Res> {
  __$$_PreviousSuccessCopyWithImpl(
      _$_PreviousSuccess _value, $Res Function(_$_PreviousSuccess) _then)
      : super(_value, (v) => _then(v as _$_PreviousSuccess));

  @override
  _$_PreviousSuccess get _value => super._value as _$_PreviousSuccess;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_PreviousSuccess(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PreviousSuccess implements _PreviousSuccess {
  const _$_PreviousSuccess(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'FormWizardState.previousSuccess(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviousSuccess &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_PreviousSuccessCopyWith<_$_PreviousSuccess> get copyWith =>
      __$$_PreviousSuccessCopyWithImpl<_$_PreviousSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index, int clickCount) nextSuccess,
    required TResult Function(int index) previousSuccess,
    required TResult Function(bool isFinish) finishSuccess,
    required TResult Function(int index) stepperSuccess,
  }) {
    return previousSuccess(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
  }) {
    return previousSuccess?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
    required TResult orElse(),
  }) {
    if (previousSuccess != null) {
      return previousSuccess(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NextSuccess value) nextSuccess,
    required TResult Function(_PreviousSuccess value) previousSuccess,
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_StepperSuccess value) stepperSuccess,
  }) {
    return previousSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
  }) {
    return previousSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
    required TResult orElse(),
  }) {
    if (previousSuccess != null) {
      return previousSuccess(this);
    }
    return orElse();
  }
}

abstract class _PreviousSuccess implements FormWizardState {
  const factory _PreviousSuccess(final int index) = _$_PreviousSuccess;

  int get index;
  @JsonKey(ignore: true)
  _$$_PreviousSuccessCopyWith<_$_PreviousSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishSuccessCopyWith<$Res> {
  factory _$$_FinishSuccessCopyWith(
          _$_FinishSuccess value, $Res Function(_$_FinishSuccess) then) =
      __$$_FinishSuccessCopyWithImpl<$Res>;
  $Res call({bool isFinish});
}

/// @nodoc
class __$$_FinishSuccessCopyWithImpl<$Res>
    extends _$FormWizardStateCopyWithImpl<$Res>
    implements _$$_FinishSuccessCopyWith<$Res> {
  __$$_FinishSuccessCopyWithImpl(
      _$_FinishSuccess _value, $Res Function(_$_FinishSuccess) _then)
      : super(_value, (v) => _then(v as _$_FinishSuccess));

  @override
  _$_FinishSuccess get _value => super._value as _$_FinishSuccess;

  @override
  $Res call({
    Object? isFinish = freezed,
  }) {
    return _then(_$_FinishSuccess(
      isFinish == freezed
          ? _value.isFinish
          : isFinish // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FinishSuccess implements _FinishSuccess {
  const _$_FinishSuccess(this.isFinish);

  @override
  final bool isFinish;

  @override
  String toString() {
    return 'FormWizardState.finishSuccess(isFinish: $isFinish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinishSuccess &&
            const DeepCollectionEquality().equals(other.isFinish, isFinish));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFinish));

  @JsonKey(ignore: true)
  @override
  _$$_FinishSuccessCopyWith<_$_FinishSuccess> get copyWith =>
      __$$_FinishSuccessCopyWithImpl<_$_FinishSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index, int clickCount) nextSuccess,
    required TResult Function(int index) previousSuccess,
    required TResult Function(bool isFinish) finishSuccess,
    required TResult Function(int index) stepperSuccess,
  }) {
    return finishSuccess(isFinish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
  }) {
    return finishSuccess?.call(isFinish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
    required TResult orElse(),
  }) {
    if (finishSuccess != null) {
      return finishSuccess(isFinish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NextSuccess value) nextSuccess,
    required TResult Function(_PreviousSuccess value) previousSuccess,
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_StepperSuccess value) stepperSuccess,
  }) {
    return finishSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
  }) {
    return finishSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
    required TResult orElse(),
  }) {
    if (finishSuccess != null) {
      return finishSuccess(this);
    }
    return orElse();
  }
}

abstract class _FinishSuccess implements FormWizardState {
  const factory _FinishSuccess(final bool isFinish) = _$_FinishSuccess;

  bool get isFinish;
  @JsonKey(ignore: true)
  _$$_FinishSuccessCopyWith<_$_FinishSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StepperSuccessCopyWith<$Res> {
  factory _$$_StepperSuccessCopyWith(
          _$_StepperSuccess value, $Res Function(_$_StepperSuccess) then) =
      __$$_StepperSuccessCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_StepperSuccessCopyWithImpl<$Res>
    extends _$FormWizardStateCopyWithImpl<$Res>
    implements _$$_StepperSuccessCopyWith<$Res> {
  __$$_StepperSuccessCopyWithImpl(
      _$_StepperSuccess _value, $Res Function(_$_StepperSuccess) _then)
      : super(_value, (v) => _then(v as _$_StepperSuccess));

  @override
  _$_StepperSuccess get _value => super._value as _$_StepperSuccess;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_StepperSuccess(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StepperSuccess implements _StepperSuccess {
  const _$_StepperSuccess(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'FormWizardState.stepperSuccess(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepperSuccess &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_StepperSuccessCopyWith<_$_StepperSuccess> get copyWith =>
      __$$_StepperSuccessCopyWithImpl<_$_StepperSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index, int clickCount) nextSuccess,
    required TResult Function(int index) previousSuccess,
    required TResult Function(bool isFinish) finishSuccess,
    required TResult Function(int index) stepperSuccess,
  }) {
    return stepperSuccess(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
  }) {
    return stepperSuccess?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index, int clickCount)? nextSuccess,
    TResult Function(int index)? previousSuccess,
    TResult Function(bool isFinish)? finishSuccess,
    TResult Function(int index)? stepperSuccess,
    required TResult orElse(),
  }) {
    if (stepperSuccess != null) {
      return stepperSuccess(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NextSuccess value) nextSuccess,
    required TResult Function(_PreviousSuccess value) previousSuccess,
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_StepperSuccess value) stepperSuccess,
  }) {
    return stepperSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
  }) {
    return stepperSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextSuccess value)? nextSuccess,
    TResult Function(_PreviousSuccess value)? previousSuccess,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_StepperSuccess value)? stepperSuccess,
    required TResult orElse(),
  }) {
    if (stepperSuccess != null) {
      return stepperSuccess(this);
    }
    return orElse();
  }
}

abstract class _StepperSuccess implements FormWizardState {
  const factory _StepperSuccess(final int index) = _$_StepperSuccess;

  int get index;
  @JsonKey(ignore: true)
  _$$_StepperSuccessCopyWith<_$_StepperSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
