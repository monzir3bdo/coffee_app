import 'package:bloc/bloc.dart';
import 'package:coffee_app/core/database/hive_data_base.dart';
import 'package:coffee_app/features/cart/data/models/cart_model.dart';
import 'package:coffee_app/features/cart/data/models/coffee_order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_cubit.freezed.dart';
part 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit() : super(const AddToCartState.initial());
  //add to cart
  void addToCart(CoffeeOrderModel coffeeOrder) {
    try {
      emit(const AddToCartState.loading());
      if (HiveDatabase.instance.cartCoffeeBox!.values.isEmpty) {
        HiveDatabase.instance.cartCoffeeBox!.add(
          CartModel(
            coffees: [coffeeOrder],
            totalPrice: coffeeOrder.totalPrice,
            deliveryPrice: coffeeOrder.totalPrice * 0.8,
          ),
        );
      } else {
        HiveDatabase.instance.cartCoffeeBox!.values.first.coffees;
        HiveDatabase.instance.cartCoffeeBox!.values.first.save();
      }

      emit(const AddToCartState.success());
    } catch (e) {
      emit(AddToCartState.failure(message: e.toString()));
    }
  }
}
