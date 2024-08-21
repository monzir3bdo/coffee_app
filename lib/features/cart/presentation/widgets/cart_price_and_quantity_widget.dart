import 'package:coffee_app/features/cart/data/models/coffee_order_model.dart';
import 'package:coffee_app/features/cart/presentation/widgets/cart_product_price_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/cart_quantity_widget.dart';
import 'package:flutter/material.dart';

class CartPriceAndQuantityWidget extends StatelessWidget {
  const CartPriceAndQuantityWidget(
      {super.key, required this.coffeeModel, required this.coffeePrice});
  final CoffeeOrderModel coffeeModel;
  final num coffeePrice;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CartProductPriceWidget(
            coffeePrice: coffeePrice,
          ),
          CartQuantityWidget(
            coffeeQuantity: coffeeModel.quantity,
          ),
        ],
      ),
    );
  }
}
