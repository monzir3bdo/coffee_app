import 'package:coffee_app/core/app/bloc/app_cubit.dart';
import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_details/coffee_size_item_widget.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_price_and_to_cart_widget.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_toppings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/coffee_model.dart';
import 'coffee_image_and_add_to_favourite_widget.dart';
import 'coffee_name_widget.dart';

class CoffeeGridItemWidget extends StatelessWidget {
  const CoffeeGridItemWidget({super.key, required this.coffeeModel});
  final CoffeeModel coffeeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.read<AppCubit>().isDarkMode
            ? context.colors.coffeeTypeSlider
            : const Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: context.darkMode
                ? Colors.white.withOpacity(0.18)
                : Colors.grey.withOpacity(0.4),
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CoffeeImageAndAddToFavouriteWidget(
            coffee: coffeeModel,
          ),
          Gap(9),
          CoffeeNameWidget(
            coffeeName: coffeeModel!.name,
          ),
          Gap(1),
          CoffeeToppingsWidget(),
          Gap(5),
          CoffeePriceAndToCartWidget(
            coffeePrice: coffeeModel!.prices[CoffeeSize.short.name],
          )
        ],
      ),
    );
  }
}
