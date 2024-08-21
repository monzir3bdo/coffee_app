import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartProductImageWidget extends StatelessWidget {
  const CartProductImageWidget({super.key, required this.coffeeImage});
  final String coffeeImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        20,
      ),
      child: Image.asset(
        coffeeImage,
        height: 89.h,
        width: 89.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
