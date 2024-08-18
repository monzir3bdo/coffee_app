part of 'get_favourite_bloc.dart';

@freezed
class GetFavouriteEvent with _$GetFavouriteEvent {
  const factory GetFavouriteEvent.started() = _Started;
  const factory GetFavouriteEvent.getAllFavouritesEvent() =
      _GetAllFavouritesEvent;
}
