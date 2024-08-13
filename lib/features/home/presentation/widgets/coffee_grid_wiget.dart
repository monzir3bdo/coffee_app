import 'package:coffee_app/features/home/presentation/widgets/coffee_grid_item_widget.dart';
import 'package:flutter/material.dart';

class CoffeeGridWidget extends StatelessWidget {
  const CoffeeGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 15,
        childAspectRatio: 0.8,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CoffeeGridItemWidget();
      },
    );
  }
}
