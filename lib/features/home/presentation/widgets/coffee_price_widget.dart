import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CoffeePriceWidget extends StatelessWidget {
  const CoffeePriceWidget({super.key, required this.coffeePrice});
  final num coffeePrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 7.5),
      child: Text(
        '\$$coffeePrice',
        style: semiBold16.copyWith(
          fontSize: 14,
          color: context.colors.textColor,
        ),
      ),
    );
  }
}
