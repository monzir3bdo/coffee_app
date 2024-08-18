import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CartTotalItemsWidget extends StatelessWidget {
  const CartTotalItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Items:'.hardCoded,
              style: medium14.copyWith(
                color: context.colors.textColor,
              ),
            ),
            Text(r'$50.00'.hardCoded,
                style: medium14.copyWith(color: context.colors.textColor)),
          ],
        ),
      ),
    );
  }
}
