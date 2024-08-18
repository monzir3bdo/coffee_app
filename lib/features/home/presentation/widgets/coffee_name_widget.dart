import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CoffeeNameWidget extends StatelessWidget {
  const CoffeeNameWidget({super.key, required this.coffeeName});
  final String coffeeName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 7.5),
      child: Text(
        coffeeName,
        style: semiBold16.copyWith(
          color: context.colors.textColor,
        ),
      ),
    );
  }
}
