import 'package:bloc/bloc.dart';
import 'package:coffee_app/core/database/hive_data_base.dart';
import 'package:coffee_app/core/models/coffee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_favourite_bloc.freezed.dart';
part 'get_favourite_event.dart';
part 'get_favourite_state.dart';

class GetFavouriteBloc extends Bloc<GetFavouriteEvent, GetFavouriteState> {
  GetFavouriteBloc() : super(const GetFavouriteState.initial()) {
    on<_GetAllFavouritesEvent>(_getAllFavourites);
  }
  _getAllFavourites(GetFavouriteEvent event, Emitter<GetFavouriteState> state) {
    try {
      final coffees = HiveDatabase.instance.favouriteCoffeeBox!.values.toList();
      if (coffees.isEmpty) {
        emit(const GetFavouriteState.empty());
      } else {
        emit(GetFavouriteState.success(coffees: coffees));
      }
    } catch (e) {
      emit(const GetFavouriteState.failure());
    }
  }
}
