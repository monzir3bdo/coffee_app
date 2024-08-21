import 'package:coffee_app/core/theme/app_colors.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_details/coffee_quantity_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CartQuantityWidget extends StatelessWidget {
  const CartQuantityWidget({super.key, required this.coffeeQuantity});
  final int coffeeQuantity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CoffeeQuantityButtonWidget(
          iconData: Icons.remove,
          height: 24.h,
          width: 24.h,
          lightColor: const Color(0xffE0E0E0),
          darkColor: const Color(0xff66696F),
          iconColor: AppColors.black,
        ),
        Gap(15.w),
        Text('$coffeeQuantity'),
        Gap(15.w),
        CoffeeQuantityButtonWidget(
          iconData: Icons.add,
          height: 24.h,
          width: 24.h,
          lightColor: const Color(0xffE0E0E0),
          darkColor: const Color(0xff66696F),
          iconColor: AppColors.black,
        ),
      ],
    );
  }
}
