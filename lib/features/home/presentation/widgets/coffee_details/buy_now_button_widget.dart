import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/widgets/app_button.dart';
import 'package:coffee_app/features/cart/data/models/coffee_order_model.dart';
import 'package:coffee_app/features/cart/presentation/bloc/add_to_cart/add_to_cart_cubit.dart';
import 'package:coffee_app/features/home/presentation/bloc/coffee_description/coffee_description_cubit.dart';
import 'package:coffee_app/features/home/presentation/bloc/cup/cup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/models/coffee_model.dart';

class BuyNowButtonWidget extends StatelessWidget {
  const BuyNowButtonWidget({super.key, required this.coffee});
  final CoffeeModel coffee;
  @override
  Widget build(BuildContext context) {
    return AppButton(
      width: 178.w,
      height: 53.h,
      radius: 15,
      title: 'Buy Now'.hardCoded,
      backgroundColor: const Color(0xffA9612F),
      onPressed: () {
        // context.pushNamed(Routes.cart.name);
        context.read<AddToCartCubit>().addToCart(
              CoffeeOrderModel(
                coffeeModel: [coffee],
                totalPrice: context.read<CoffeeDescriptionCubit>().orderPrice,
                quantity: context.read<CoffeeDescriptionCubit>().numberOfCoffee,
                coffeeSize: context.read<CupCubit>().selectedSize,
              ),
            );
      },
    );
  }
}
