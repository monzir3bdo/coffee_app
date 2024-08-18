import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'coffee_ingredient_item_widget.dart';

class CoffeeIngredientsWidget extends StatelessWidget {
  const CoffeeIngredientsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredients'.hardCoded,
              style: regular12.copyWith(
                fontSize: 12,
                color: context.colors.textColor,
              ),
            ),
            Row(
              children: [
                CoffeeIngredientItemWidget(),
                CoffeeIngredientItemWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
