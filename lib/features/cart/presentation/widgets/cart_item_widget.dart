import 'package:coffee_app/core/app/bloc/app_cubit.dart';
import 'package:coffee_app/features/cart/data/models/coffee_order_model.dart';
import 'package:coffee_app/features/cart/presentation/widgets/cart_price_and_quantity_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/coffee_model.dart';
import 'cart_product_image_widget.dart';
import 'cart_product_name_widget.dart';
import 'cart_product_toppings_widget.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget(
      {super.key, required this.coffeeOrder, required this.coffeeModel});
  final CoffeeOrderModel coffeeOrder;
  final CoffeeModel coffeeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106.h,
      width: 326.w,
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
      decoration: BoxDecoration(
        color: context.read<AppCubit>().isDarkMode
            ? const Color(0xff141921)
            : const Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0.8,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CartProductImageWidget(
            coffeeImage: coffeeModel.image,
          ),
          Gap(10.w),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CartProductNameWidget(
                  productName: coffeeModel.name,
                ),
                Gap(5.h),
                const CartProductToppingsWidget(),
                Gap(5.h),
                CartPriceAndQuantityWidget(
                  coffeeModel: coffeeOrder,
                  coffeePrice: coffeeModel.prices[coffeeOrder.coffeeSize!.name],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
