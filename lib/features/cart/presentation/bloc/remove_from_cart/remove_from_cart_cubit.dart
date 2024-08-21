import 'package:bloc/bloc.dart';
import 'package:coffee_app/features/cart/data/models/coffee_order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_from_cart_cubit.freezed.dart';
part 'remove_from_cart_state.dart';

class RemoveFromCartCubit extends Cubit<RemoveFromCartState> {
  RemoveFromCartCubit() : super(const RemoveFromCartState.initial());
  //remove from cart
  void removeFromCart(CoffeeOrderModel coffeeOrder) async {
    try {
      emit(const RemoveFromCartState.loading());
      await coffeeOrder.delete();
      emit(const RemoveFromCartState.success());
    } catch (e) {
      emit(RemoveFromCartState.failure(message: e.toString()));
    }
  }
}
