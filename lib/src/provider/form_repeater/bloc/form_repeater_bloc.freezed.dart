// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_repeater_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormRepeaterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, Widget web, Widget mobileNtab)
        add,
    required TResult Function(int index) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, Widget web, Widget mobileNtab)? add,
    TResult Function(int index)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, Widget web, Widget mobileNtab)? add,
    TResult Function(int index)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormRepeaterEventCopyWith<$Res> {
  factory $FormRepeaterEventCopyWith(
          FormRepeaterEvent value, $Res Function(FormRepeaterEvent) then) =
      _$FormRepeaterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormRepeaterEventCopyWithImpl<$Res>
    implements $FormRepeaterEventCopyWith<$Res> {
  _$FormRepeaterEventCopyWithImpl(this._value, this._then);

  final FormRepeaterEvent _value;
  // ignore: unused_field
  final $Res Function(FormRepeaterEvent) _then;
}

/// @nodoc
abstract class _$$_AddCopyWith<$Res> {
  factory _$$_AddCopyWith(_$_Add value, $Res Function(_$_Add) then) =
      __$$_AddCopyWithImpl<$Res>;
  $Res call({String fileName, Widget web, Widget mobileNtab});
}

/// @nodoc
class __$$_AddCopyWithImpl<$Res> extends _$FormRepeaterEventCopyWithImpl<$Res>
    implements _$$_AddCopyWith<$Res> {
  __$$_AddCopyWithImpl(_$_Add _value, $Res Function(_$_Add) _then)
      : super(_value, (v) => _then(v as _$_Add));

  @override
  _$_Add get _value => super._value as _$_Add;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? web = freezed,
    Object? mobileNtab = freezed,
  }) {
    return _then(_$_Add(
      fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      web == freezed
          ? _value.web
          : web // ignore: cast_nullable_to_non_nullable
              as Widget,
      mobileNtab == freezed
          ? _value.mobileNtab
          : mobileNtab // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add(this.fileName, this.web, this.mobileNtab);

  @override
  final String fileName;
  @override
  final Widget web;
  @override
  final Widget mobileNtab;

  @override
  String toString() {
    return 'FormRepeaterEvent.add(fileName: $fileName, web: $web, mobileNtab: $mobileNtab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Add &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.web, web) &&
            const DeepCollectionEquality()
                .equals(other.mobileNtab, mobileNtab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(web),
      const DeepCollectionEquality().hash(mobileNtab));

  @JsonKey(ignore: true)
  @override
  _$$_AddCopyWith<_$_Add> get copyWith =>
      __$$_AddCopyWithImpl<_$_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, Widget web, Widget mobileNtab)
        add,
    required TResult Function(int index) delete,
  }) {
    return add(fileName, web, mobileNtab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, Widget web, Widget mobileNtab)? add,
    TResult Function(int index)? delete,
  }) {
    return add?.call(fileName, web, mobileNtab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, Widget web, Widget mobileNtab)? add,
    TResult Function(int index)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(fileName, web, mobileNtab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements FormRepeaterEvent {
  const factory _Add(
          final String fileName, final Widget web, final Widget mobileNtab) =
      _$_Add;

  String get fileName;
  Widget get web;
  Widget get mobileNtab;
  @JsonKey(ignore: true)
  _$$_AddCopyWith<_$_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$FormRepeaterEventCopyWithImpl<$Res>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, (v) => _then(v as _$_Delete));

  @override
  _$_Delete get _value => super._value as _$_Delete;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_Delete(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'FormRepeaterEvent.delete(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, Widget web, Widget mobileNtab)
        add,
    required TResult Function(int index) delete,
  }) {
    return delete(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, Widget web, Widget mobileNtab)? add,
    TResult Function(int index)? delete,
  }) {
    return delete?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, Widget web, Widget mobileNtab)? add,
    TResult Function(int index)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements FormRepeaterEvent {
  const factory _Delete(final int index) = _$_Delete;

  int get index;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormRepeaterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, Widget web, Widget mobileNtab)
        addSuceess,
    required TResult Function(int index) deleteSuceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, Widget web, Widget mobileNtab)?
        addSuceess,
    TResult Function(int index)? deleteSuceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, Widget web, Widget mobileNtab)?
        addSuceess,
    TResult Function(int index)? deleteSuceess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddSuccess value) addSuceess,
    required TResult Function(_DeleteSuccess value) deleteSuceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuceess,
    TResult Function(_DeleteSuccess value)? deleteSuceess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuceess,
    TResult Function(_DeleteSuccess value)? deleteSuceess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormRepeaterStateCopyWith<$Res> {
  factory $FormRepeaterStateCopyWith(
          FormRepeaterState value, $Res Function(FormRepeaterState) then) =
      _$FormRepeaterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormRepeaterStateCopyWithImpl<$Res>
    implements $FormRepeaterStateCopyWith<$Res> {
  _$FormRepeaterStateCopyWithImpl(this._value, this._then);

  final FormRepeaterState _value;
  // ignore: unused_field
  final $Res Function(FormRepeaterState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FormRepeaterStateCopyWithImpl<$Res>
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
    return 'FormRepeaterState.initial()';
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
    required TResult Function(String fileName, Widget web, Widget mobileNtab)
        addSuceess,
    required TResult Function(int index) deleteSuceess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, Widget web, Widget mobileNtab)?
        addSuceess,
    TResult Function(int index)? deleteSuceess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, Widget web, Widget mobileNtab)?
        addSuceess,
    TResult Function(int index)? deleteSuceess,
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
    required TResult Function(_AddSuccess value) addSuceess,
    required TResult Function(_DeleteSuccess value) deleteSuceess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuceess,
    TResult Function(_DeleteSuccess value)? deleteSuceess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuceess,
    TResult Function(_DeleteSuccess value)? deleteSuceess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FormRepeaterState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AddSuccessCopyWith<$Res> {
  factory _$$_AddSuccessCopyWith(
          _$_AddSuccess value, $Res Function(_$_AddSuccess) then) =
      __$$_AddSuccessCopyWithImpl<$Res>;
  $Res call({String fileName, Widget web, Widget mobileNtab});
}

/// @nodoc
class __$$_AddSuccessCopyWithImpl<$Res>
    extends _$FormRepeaterStateCopyWithImpl<$Res>
    implements _$$_AddSuccessCopyWith<$Res> {
  __$$_AddSuccessCopyWithImpl(
      _$_AddSuccess _value, $Res Function(_$_AddSuccess) _then)
      : super(_value, (v) => _then(v as _$_AddSuccess));

  @override
  _$_AddSuccess get _value => super._value as _$_AddSuccess;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? web = freezed,
    Object? mobileNtab = freezed,
  }) {
    return _then(_$_AddSuccess(
      fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      web == freezed
          ? _value.web
          : web // ignore: cast_nullable_to_non_nullable
              as Widget,
      mobileNtab == freezed
          ? _value.mobileNtab
          : mobileNtab // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_AddSuccess implements _AddSuccess {
  const _$_AddSuccess(this.fileName, this.web, this.mobileNtab);

  @override
  final String fileName;
  @override
  final Widget web;
  @override
  final Widget mobileNtab;

  @override
  String toString() {
    return 'FormRepeaterState.addSuceess(fileName: $fileName, web: $web, mobileNtab: $mobileNtab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddSuccess &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.web, web) &&
            const DeepCollectionEquality()
                .equals(other.mobileNtab, mobileNtab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(web),
      const DeepCollectionEquality().hash(mobileNtab));

  @JsonKey(ignore: true)
  @override
  _$$_AddSuccessCopyWith<_$_AddSuccess> get copyWith =>
      __$$_AddSuccessCopyWithImpl<_$_AddSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, Widget web, Widget mobileNtab)
        addSuceess,
    required TResult Function(int index) deleteSuceess,
  }) {
    return addSuceess(fileName, web, mobileNtab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, Widget web, Widget mobileNtab)?
        addSuceess,
    TResult Function(int index)? deleteSuceess,
  }) {
    return addSuceess?.call(fileName, web, mobileNtab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, Widget web, Widget mobileNtab)?
        addSuceess,
    TResult Function(int index)? deleteSuceess,
    required TResult orElse(),
  }) {
    if (addSuceess != null) {
      return addSuceess(fileName, web, mobileNtab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddSuccess value) addSuceess,
    required TResult Function(_DeleteSuccess value) deleteSuceess,
  }) {
    return addSuceess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuceess,
    TResult Function(_DeleteSuccess value)? deleteSuceess,
  }) {
    return addSuceess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuceess,
    TResult Function(_DeleteSuccess value)? deleteSuceess,
    required TResult orElse(),
  }) {
    if (addSuceess != null) {
      return addSuceess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements FormRepeaterState {
  const factory _AddSuccess(
          final String fileName, final Widget web, final Widget mobileNtab) =
      _$_AddSuccess;

  String get fileName;
  Widget get web;
  Widget get mobileNtab;
  @JsonKey(ignore: true)
  _$$_AddSuccessCopyWith<_$_AddSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteSuccessCopyWith<$Res> {
  factory _$$_DeleteSuccessCopyWith(
          _$_DeleteSuccess value, $Res Function(_$_DeleteSuccess) then) =
      __$$_DeleteSuccessCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_DeleteSuccessCopyWithImpl<$Res>
    extends _$FormRepeaterStateCopyWithImpl<$Res>
    implements _$$_DeleteSuccessCopyWith<$Res> {
  __$$_DeleteSuccessCopyWithImpl(
      _$_DeleteSuccess _value, $Res Function(_$_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _$_DeleteSuccess));

  @override
  _$_DeleteSuccess get _value => super._value as _$_DeleteSuccess;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_DeleteSuccess(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'FormRepeaterState.deleteSuceess(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSuccess &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteSuccessCopyWith<_$_DeleteSuccess> get copyWith =>
      __$$_DeleteSuccessCopyWithImpl<_$_DeleteSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, Widget web, Widget mobileNtab)
        addSuceess,
    required TResult Function(int index) deleteSuceess,
  }) {
    return deleteSuceess(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, Widget web, Widget mobileNtab)?
        addSuceess,
    TResult Function(int index)? deleteSuceess,
  }) {
    return deleteSuceess?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, Widget web, Widget mobileNtab)?
        addSuceess,
    TResult Function(int index)? deleteSuceess,
    required TResult orElse(),
  }) {
    if (deleteSuceess != null) {
      return deleteSuceess(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddSuccess value) addSuceess,
    required TResult Function(_DeleteSuccess value) deleteSuceess,
  }) {
    return deleteSuceess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuceess,
    TResult Function(_DeleteSuccess value)? deleteSuceess,
  }) {
    return deleteSuceess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuceess,
    TResult Function(_DeleteSuccess value)? deleteSuceess,
    required TResult orElse(),
  }) {
    if (deleteSuceess != null) {
      return deleteSuceess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements FormRepeaterState {
  const factory _DeleteSuccess(final int index) = _$_DeleteSuccess;

  int get index;
  @JsonKey(ignore: true)
  _$$_DeleteSuccessCopyWith<_$_DeleteSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
