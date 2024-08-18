import 'package:flutter/material.dart';

class CoffeeIngredientItemWidget extends StatelessWidget {
  const CoffeeIngredientItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.scale(
          scale: 1.1,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
            shape: CircleBorder(),
          ),
        )
      ],
    );
  }
}
