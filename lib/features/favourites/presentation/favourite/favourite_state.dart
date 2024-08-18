part of 'favourite_cubit.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = _Initial;
  const factory FavouriteState.addToFavourite({required CoffeeModel coffee}) =
      _AddToFavourite;
  const factory FavouriteState.removeToFavourite({required int coffeeId}) =
      _RemoveFromFavourite;
  const factory FavouriteState.getFavourite(
      {required List<CoffeeModel> coffee}) = _GetFavouriteCoffee;
}
