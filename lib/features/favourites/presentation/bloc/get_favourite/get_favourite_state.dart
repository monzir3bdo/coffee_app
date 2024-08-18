part of 'get_favourite_bloc.dart';

@freezed
class GetFavouriteState with _$GetFavouriteState {
  const factory GetFavouriteState.initial() = _Intital;
  const factory GetFavouriteState.empty() = _Empty;
  const factory GetFavouriteState.success(
      {required List<CoffeeModel> coffees}) = _Success;
  const factory GetFavouriteState.failure() = _Failure;
}
