import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class CoffeeBeansBackgroundWidget extends StatelessWidget {
  const CoffeeBeansBackgroundWidget({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage(
            Assets.pngCoffeeBeansBackground,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
