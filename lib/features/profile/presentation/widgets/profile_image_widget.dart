import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.orange,
        ),
      ),
      child: Image.asset(
        Assets.pngCoffeeBeansBackground,
      ),
    );
  }
}
