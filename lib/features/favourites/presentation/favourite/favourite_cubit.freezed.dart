// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CoffeeModel coffee) addToFavourite,
    required TResult Function(int coffeeId) removeToFavourite,
    required TResult Function(List<CoffeeModel> coffee) getFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CoffeeModel coffee)? addToFavourite,
    TResult? Function(int coffeeId)? removeToFavourite,
    TResult? Function(List<CoffeeModel> coffee)? getFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CoffeeModel coffee)? addToFavourite,
    TResult Function(int coffeeId)? removeToFavourite,
    TResult Function(List<CoffeeModel> coffee)? getFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeToFavourite,
    required TResult Function(_GetFavouriteCoffee value) getFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddToFavourite value)? addToFavourite,
    TResult? Function(_RemoveFromFavourite value)? removeToFavourite,
    TResult? Function(_GetFavouriteCoffee value)? getFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeToFavourite,
    TResult Function(_GetFavouriteCoffee value)? getFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res, FavouriteState>;
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res, $Val extends FavouriteState>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

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
    extends _$FavouriteStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'FavouriteState.initial()';
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
    required TResult Function(CoffeeModel coffee) addToFavourite,
    required TResult Function(int coffeeId) removeToFavourite,
    required TResult Function(List<CoffeeModel> coffee) getFavourite,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CoffeeModel coffee)? addToFavourite,
    TResult? Function(int coffeeId)? removeToFavourite,
    TResult? Function(List<CoffeeModel> coffee)? getFavourite,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CoffeeModel coffee)? addToFavourite,
    TResult Function(int coffeeId)? removeToFavourite,
    TResult Function(List<CoffeeModel> coffee)? getFavourite,
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
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeToFavourite,
    required TResult Function(_GetFavouriteCoffee value) getFavourite,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddToFavourite value)? addToFavourite,
    TResult? Function(_RemoveFromFavourite value)? removeToFavourite,
    TResult? Function(_GetFavouriteCoffee value)? getFavourite,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeToFavourite,
    TResult Function(_GetFavouriteCoffee value)? getFavourite,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavouriteState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AddToFavouriteImplCopyWith<$Res> {
  factory _$$AddToFavouriteImplCopyWith(_$AddToFavouriteImpl value,
          $Res Function(_$AddToFavouriteImpl) then) =
      __$$AddToFavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoffeeModel coffee});
}

/// @nodoc
class __$$AddToFavouriteImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$AddToFavouriteImpl>
    implements _$$AddToFavouriteImplCopyWith<$Res> {
  __$$AddToFavouriteImplCopyWithImpl(
      _$AddToFavouriteImpl _value, $Res Function(_$AddToFavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffee = null,
  }) {
    return _then(_$AddToFavouriteImpl(
      coffee: null == coffee
          ? _value.coffee
          : coffee // ignore: cast_nullable_to_non_nullable
              as CoffeeModel,
    ));
  }
}

/// @nodoc

class _$AddToFavouriteImpl implements _AddToFavourite {
  const _$AddToFavouriteImpl({required this.coffee});

  @override
  final CoffeeModel coffee;

  @override
  String toString() {
    return 'FavouriteState.addToFavourite(coffee: $coffee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavouriteImpl &&
            (identical(other.coffee, coffee) || other.coffee == coffee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coffee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFavouriteImplCopyWith<_$AddToFavouriteImpl> get copyWith =>
      __$$AddToFavouriteImplCopyWithImpl<_$AddToFavouriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CoffeeModel coffee) addToFavourite,
    required TResult Function(int coffeeId) removeToFavourite,
    required TResult Function(List<CoffeeModel> coffee) getFavourite,
  }) {
    return addToFavourite(coffee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CoffeeModel coffee)? addToFavourite,
    TResult? Function(int coffeeId)? removeToFavourite,
    TResult? Function(List<CoffeeModel> coffee)? getFavourite,
  }) {
    return addToFavourite?.call(coffee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CoffeeModel coffee)? addToFavourite,
    TResult Function(int coffeeId)? removeToFavourite,
    TResult Function(List<CoffeeModel> coffee)? getFavourite,
    required TResult orElse(),
  }) {
    if (addToFavourite != null) {
      return addToFavourite(coffee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeToFavourite,
    required TResult Function(_GetFavouriteCoffee value) getFavourite,
  }) {
    return addToFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddToFavourite value)? addToFavourite,
    TResult? Function(_RemoveFromFavourite value)? removeToFavourite,
    TResult? Function(_GetFavouriteCoffee value)? getFavourite,
  }) {
    return addToFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeToFavourite,
    TResult Function(_GetFavouriteCoffee value)? getFavourite,
    required TResult orElse(),
  }) {
    if (addToFavourite != null) {
      return addToFavourite(this);
    }
    return orElse();
  }
}

abstract class _AddToFavourite implements FavouriteState {
  const factory _AddToFavourite({required final CoffeeModel coffee}) =
      _$AddToFavouriteImpl;

  CoffeeModel get coffee;
  @JsonKey(ignore: true)
  _$$AddToFavouriteImplCopyWith<_$AddToFavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromFavouriteImplCopyWith<$Res> {
  factory _$$RemoveFromFavouriteImplCopyWith(_$RemoveFromFavouriteImpl value,
          $Res Function(_$RemoveFromFavouriteImpl) then) =
      __$$RemoveFromFavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int coffeeId});
}

/// @nodoc
class __$$RemoveFromFavouriteImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$RemoveFromFavouriteImpl>
    implements _$$RemoveFromFavouriteImplCopyWith<$Res> {
  __$$RemoveFromFavouriteImplCopyWithImpl(_$RemoveFromFavouriteImpl _value,
      $Res Function(_$RemoveFromFavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffeeId = null,
  }) {
    return _then(_$RemoveFromFavouriteImpl(
      coffeeId: null == coffeeId
          ? _value.coffeeId
          : coffeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveFromFavouriteImpl implements _RemoveFromFavourite {
  const _$RemoveFromFavouriteImpl({required this.coffeeId});

  @override
  final int coffeeId;

  @override
  String toString() {
    return 'FavouriteState.removeToFavourite(coffeeId: $coffeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromFavouriteImpl &&
            (identical(other.coffeeId, coffeeId) ||
                other.coffeeId == coffeeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coffeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromFavouriteImplCopyWith<_$RemoveFromFavouriteImpl> get copyWith =>
      __$$RemoveFromFavouriteImplCopyWithImpl<_$RemoveFromFavouriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CoffeeModel coffee) addToFavourite,
    required TResult Function(int coffeeId) removeToFavourite,
    required TResult Function(List<CoffeeModel> coffee) getFavourite,
  }) {
    return removeToFavourite(coffeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CoffeeModel coffee)? addToFavourite,
    TResult? Function(int coffeeId)? removeToFavourite,
    TResult? Function(List<CoffeeModel> coffee)? getFavourite,
  }) {
    return removeToFavourite?.call(coffeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CoffeeModel coffee)? addToFavourite,
    TResult Function(int coffeeId)? removeToFavourite,
    TResult Function(List<CoffeeModel> coffee)? getFavourite,
    required TResult orElse(),
  }) {
    if (removeToFavourite != null) {
      return removeToFavourite(coffeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeToFavourite,
    required TResult Function(_GetFavouriteCoffee value) getFavourite,
  }) {
    return removeToFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddToFavourite value)? addToFavourite,
    TResult? Function(_RemoveFromFavourite value)? removeToFavourite,
    TResult? Function(_GetFavouriteCoffee value)? getFavourite,
  }) {
    return removeToFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeToFavourite,
    TResult Function(_GetFavouriteCoffee value)? getFavourite,
    required TResult orElse(),
  }) {
    if (removeToFavourite != null) {
      return removeToFavourite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromFavourite implements FavouriteState {
  const factory _RemoveFromFavourite({required final int coffeeId}) =
      _$RemoveFromFavouriteImpl;

  int get coffeeId;
  @JsonKey(ignore: true)
  _$$RemoveFromFavouriteImplCopyWith<_$RemoveFromFavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFavouriteCoffeeImplCopyWith<$Res> {
  factory _$$GetFavouriteCoffeeImplCopyWith(_$GetFavouriteCoffeeImpl value,
          $Res Function(_$GetFavouriteCoffeeImpl) then) =
      __$$GetFavouriteCoffeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CoffeeModel> coffee});
}

/// @nodoc
class __$$GetFavouriteCoffeeImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$GetFavouriteCoffeeImpl>
    implements _$$GetFavouriteCoffeeImplCopyWith<$Res> {
  __$$GetFavouriteCoffeeImplCopyWithImpl(_$GetFavouriteCoffeeImpl _value,
      $Res Function(_$GetFavouriteCoffeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffee = null,
  }) {
    return _then(_$GetFavouriteCoffeeImpl(
      coffee: null == coffee
          ? _value._coffee
          : coffee // ignore: cast_nullable_to_non_nullable
              as List<CoffeeModel>,
    ));
  }
}

/// @nodoc

class _$GetFavouriteCoffeeImpl implements _GetFavouriteCoffee {
  const _$GetFavouriteCoffeeImpl({required final List<CoffeeModel> coffee})
      : _coffee = coffee;

  final List<CoffeeModel> _coffee;
  @override
  List<CoffeeModel> get coffee {
    if (_coffee is EqualUnmodifiableListView) return _coffee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coffee);
  }

  @override
  String toString() {
    return 'FavouriteState.getFavourite(coffee: $coffee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavouriteCoffeeImpl &&
            const DeepCollectionEquality().equals(other._coffee, _coffee));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coffee));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavouriteCoffeeImplCopyWith<_$GetFavouriteCoffeeImpl> get copyWith =>
      __$$GetFavouriteCoffeeImplCopyWithImpl<_$GetFavouriteCoffeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CoffeeModel coffee) addToFavourite,
    required TResult Function(int coffeeId) removeToFavourite,
    required TResult Function(List<CoffeeModel> coffee) getFavourite,
  }) {
    return getFavourite(coffee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CoffeeModel coffee)? addToFavourite,
    TResult? Function(int coffeeId)? removeToFavourite,
    TResult? Function(List<CoffeeModel> coffee)? getFavourite,
  }) {
    return getFavourite?.call(coffee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CoffeeModel coffee)? addToFavourite,
    TResult Function(int coffeeId)? removeToFavourite,
    TResult Function(List<CoffeeModel> coffee)? getFavourite,
    required TResult orElse(),
  }) {
    if (getFavourite != null) {
      return getFavourite(coffee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeToFavourite,
    required TResult Function(_GetFavouriteCoffee value) getFavourite,
  }) {
    return getFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddToFavourite value)? addToFavourite,
    TResult? Function(_RemoveFromFavourite value)? removeToFavourite,
    TResult? Function(_GetFavouriteCoffee value)? getFavourite,
  }) {
    return getFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeToFavourite,
    TResult Function(_GetFavouriteCoffee value)? getFavourite,
    required TResult orElse(),
  }) {
    if (getFavourite != null) {
      return getFavourite(this);
    }
    return orElse();
  }
}

abstract class _GetFavouriteCoffee implements FavouriteState {
  const factory _GetFavouriteCoffee({required final List<CoffeeModel> coffee}) =
      _$GetFavouriteCoffeeImpl;

  List<CoffeeModel> get coffee;
  @JsonKey(ignore: true)
  _$$GetFavouriteCoffeeImplCopyWith<_$GetFavouriteCoffeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
