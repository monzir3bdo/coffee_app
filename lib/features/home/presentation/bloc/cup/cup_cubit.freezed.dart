// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CoffeeSize coffeeSize) cupSizeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CoffeeSize coffeeSize)? cupSizeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CoffeeSize coffeeSize)? cupSizeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CupSizeChanged value) cupSizeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CupSizeChanged value)? cupSizeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CupSizeChanged value)? cupSizeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CupStateCopyWith<$Res> {
  factory $CupStateCopyWith(CupState value, $Res Function(CupState) then) =
      _$CupStateCopyWithImpl<$Res, CupState>;
}

/// @nodoc
class _$CupStateCopyWithImpl<$Res, $Val extends CupState>
    implements $CupStateCopyWith<$Res> {
  _$CupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CupState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CoffeeSize coffeeSize) cupSizeChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CoffeeSize coffeeSize)? cupSizeChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CoffeeSize coffeeSize)? cupSizeChanged,
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
    required TResult Function(_CupSizeChanged value) cupSizeChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CupSizeChanged value)? cupSizeChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CupSizeChanged value)? cupSizeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CupState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CupSizeChangedImplCopyWith<$Res> {
  factory _$$CupSizeChangedImplCopyWith(_$CupSizeChangedImpl value,
          $Res Function(_$CupSizeChangedImpl) then) =
      __$$CupSizeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoffeeSize coffeeSize});
}

/// @nodoc
class __$$CupSizeChangedImplCopyWithImpl<$Res>
    extends _$CupStateCopyWithImpl<$Res, _$CupSizeChangedImpl>
    implements _$$CupSizeChangedImplCopyWith<$Res> {
  __$$CupSizeChangedImplCopyWithImpl(
      _$CupSizeChangedImpl _value, $Res Function(_$CupSizeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffeeSize = null,
  }) {
    return _then(_$CupSizeChangedImpl(
      coffeeSize: null == coffeeSize
          ? _value.coffeeSize
          : coffeeSize // ignore: cast_nullable_to_non_nullable
              as CoffeeSize,
    ));
  }
}

/// @nodoc

class _$CupSizeChangedImpl implements _CupSizeChanged {
  const _$CupSizeChangedImpl({required this.coffeeSize});

  @override
  final CoffeeSize coffeeSize;

  @override
  String toString() {
    return 'CupState.cupSizeChanged(coffeeSize: $coffeeSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CupSizeChangedImpl &&
            (identical(other.coffeeSize, coffeeSize) ||
                other.coffeeSize == coffeeSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coffeeSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CupSizeChangedImplCopyWith<_$CupSizeChangedImpl> get copyWith =>
      __$$CupSizeChangedImplCopyWithImpl<_$CupSizeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CoffeeSize coffeeSize) cupSizeChanged,
  }) {
    return cupSizeChanged(coffeeSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CoffeeSize coffeeSize)? cupSizeChanged,
  }) {
    return cupSizeChanged?.call(coffeeSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CoffeeSize coffeeSize)? cupSizeChanged,
    required TResult orElse(),
  }) {
    if (cupSizeChanged != null) {
      return cupSizeChanged(coffeeSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CupSizeChanged value) cupSizeChanged,
  }) {
    return cupSizeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CupSizeChanged value)? cupSizeChanged,
  }) {
    return cupSizeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CupSizeChanged value)? cupSizeChanged,
    required TResult orElse(),
  }) {
    if (cupSizeChanged != null) {
      return cupSizeChanged(this);
    }
    return orElse();
  }
}

abstract class _CupSizeChanged implements CupState {
  const factory _CupSizeChanged({required final CoffeeSize coffeeSize}) =
      _$CupSizeChangedImpl;

  CoffeeSize get coffeeSize;
  @JsonKey(ignore: true)
  _$$CupSizeChangedImplCopyWith<_$CupSizeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
