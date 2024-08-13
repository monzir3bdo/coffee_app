import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:flutter/material.dart';

import 'coffee_image_and_add_to_favourite_widget.dart';

class CoffeeGridItemWidget extends StatelessWidget {
  const CoffeeGridItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.colors.coffeeTypeSlider,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        children: [
          CoffeeImageAndAddToFavouriteWidget(),
        ],
      ),
    );
  }
}
