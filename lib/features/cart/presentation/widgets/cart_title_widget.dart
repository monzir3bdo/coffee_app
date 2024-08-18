import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CartTitleWidget extends StatelessWidget {
  const CartTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          'Shopping Cart'.hardCoded,
          style: semiBold16.copyWith(
            color: context.colors.textColor,
          ),
        ),
      ),
    );
  }
}
