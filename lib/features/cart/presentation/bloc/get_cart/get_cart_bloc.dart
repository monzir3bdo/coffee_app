import 'package:bloc/bloc.dart';
import 'package:coffee_app/core/database/hive_data_base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/cart_model.dart';

part 'get_cart_bloc.freezed.dart';
part 'get_cart_event.dart';
part 'get_cart_state.dart';

class GetCartBloc extends Bloc<GetCartEvent, GetCartState> {
  GetCartBloc() : super(const GetCartState.initial()) {
    on<_GetCartEvent>(_getCart);
  }
  _getCart(GetCartEvent event, Emitter<GetCartState> state) {
    emit(const GetCartState.loading());
    try {
      final cart = HiveDatabase.instance.cartCoffeeBox!.values;
      if (cart.isEmpty) {
        emit(const GetCartState.empty());
      } else {
        emit(GetCartState.success(cart: cart.first));
      }
    } catch (e) {
      emit(GetCartState.failure(message: e.toString()));
    }
  }
}
