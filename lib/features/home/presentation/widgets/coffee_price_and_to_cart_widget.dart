import 'package:flutter/material.dart';

import 'add_coffee_to_cart_widget.dart';
import 'coffee_price_widget.dart';

class CoffeePriceAndToCartWidget extends StatelessWidget {
  const CoffeePriceAndToCartWidget({super.key, required this.coffeePrice});
  final num coffeePrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CoffeePriceWidget(
          coffeePrice: coffeePrice,
        ),
        AddCoffeeToCartWidget(),
      ],
    );
  }
}
