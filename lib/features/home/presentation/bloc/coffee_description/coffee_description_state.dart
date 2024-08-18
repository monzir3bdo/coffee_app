part of 'coffee_description_cubit.dart';

@freezed
class CoffeeDescriptionState with _$CoffeeDescriptionState {
  const factory CoffeeDescriptionState.initial() = _Initial;
  const factory CoffeeDescriptionState.coffeeSizeChanged(
      {required CoffeeSize coffeeSize}) = _CoffeeSizeChanged;
  const factory CoffeeDescriptionState.coffeeQuantityChanged(
      {required int numberOfCoffee}) = _CoffeeQuantityChanged;
}
