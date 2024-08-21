import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeCupWidget extends StatelessWidget {
  const CoffeeCupWidget(
      {super.key,
      required this.isSelected,
      required this.height,
      required this.width,
      this.onTap});
  final bool isSelected;
  final double height;
  final double width;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Animate(
            effects: const [
              ScaleEffect(),
            ],
            child: GestureDetector(
              onTap: onTap,
              child: SvgPicture.asset(
                isSelected ? Assets.svgSelectedCup : Assets.svgCup,
                width: width,
                height: height,
              ),
            ),
          )
        : GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset(
              isSelected ? Assets.svgSelectedCup : Assets.svgCup,
              width: width,
              height: height,
            ),
          );
  }
}
