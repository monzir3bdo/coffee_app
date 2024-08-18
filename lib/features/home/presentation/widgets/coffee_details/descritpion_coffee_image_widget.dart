import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionCoffeeImageWidget extends StatelessWidget {
  const DescriptionCoffeeImageWidget({super.key, required this.coffeeImage});
  final String coffeeImage;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            coffeeImage,
            width: context.screenWidth * 0.9,
            height: 200.h,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
