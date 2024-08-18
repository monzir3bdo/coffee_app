import 'package:bloc/bloc.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_details/coffee_size_item_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee_description_cubit.freezed.dart';
part 'coffee_description_state.dart';

class CoffeeDescriptionCubit extends Cubit<CoffeeDescriptionState> {
  CoffeeDescriptionCubit() : super(const CoffeeDescriptionState.initial());
  int numberOfCoffee = 1;
  num orderPrice = 0;
  num coffeePrice = 0;
  CoffeeSize selectedSize = CoffeeSize.short;
  void increaseCoffeeQuantity() {
    numberOfCoffee++;
    calculateOrderPrice(coffeePrice);
    emit(CoffeeDescriptionState.coffeeQuantityChanged(
        numberOfCoffee: numberOfCoffee));
  }

  void decreaseCoffeeQuantity() {
    if (numberOfCoffee > 1) {
      numberOfCoffee--;
      calculateOrderPrice(coffeePrice);
      emit(CoffeeDescriptionState.coffeeQuantityChanged(
          numberOfCoffee: numberOfCoffee));
    }
  }

  double calculateOrderPrice(num coffeePrice) {
    orderPrice = coffeePrice * numberOfCoffee;

    return orderPrice.toDouble();
  }
}
