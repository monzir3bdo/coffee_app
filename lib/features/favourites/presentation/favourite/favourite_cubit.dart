import 'package:bloc/bloc.dart';
import 'package:coffee_app/core/database/hive_data_base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/coffee_model.dart';

part 'favourite_cubit.freezed.dart';
part 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit() : super(const FavouriteState.initial());
  //favourite button pressed
  void toggleFavourite(CoffeeModel coffee) {
    if (isFavourite(coffee.id)) {
      removeFromFavourite(coffee);
    } else {
      addToFavourite(coffee);
    }
  }

  //add to favourite
  void addToFavourite(CoffeeModel coffee) {
    HiveDatabase.instance.favouriteCoffeeBox!.add(coffee);
    emit(FavouriteState.addToFavourite(coffee: coffee));
  }

//remove from favourite
  void removeFromFavourite(CoffeeModel coffee) async {
    final objectInThebox = HiveDatabase.instance.favouriteCoffeeBox!.values
        .firstWhere((coffeeModel) => coffeeModel.id == coffee.id);
    await objectInThebox.delete();

    emit(FavouriteState.removeToFavourite(coffeeId: coffee.id));
  }

//get favourite coffees
  Future<void> getFavouriteCoffees() async {
    emit(FavouriteState.getFavourite(
        coffee: HiveDatabase.instance.favouriteCoffeeBox!.values.toList()));
  }

  //check if coffee is favourite
  bool isFavourite(int coffeeId) {
    return HiveDatabase.instance.favouriteCoffeeBox!.values
        .any((coffee) => coffee.id == coffeeId);
  }
}
