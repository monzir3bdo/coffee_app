import 'package:coffee_app/features/home/presentation/widgets/coffee_details/buy_now_button_widget.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_details/product_price_in_description_screen_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/models/coffee_model.dart';

class ProductPriceAndBuyNowWidget extends StatelessWidget {
  const ProductPriceAndBuyNowWidget({super.key, required this.coffee});
  final CoffeeModel coffee;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductPriceInDescriptionScreenWidget(
              coffee: coffee,
            ),
            BuyNowButtonWidget(
              coffee: coffee,
            ),
          ],
        ),
      ),
    );
  }
}
