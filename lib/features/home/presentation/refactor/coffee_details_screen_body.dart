import 'package:coffee_app/features/home/presentation/widgets/coffee_details/product_price_and_buy_now_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/models/coffee_model.dart';
import '../widgets/coffee_details/coffee_description_widget.dart';
import '../widgets/coffee_details/coffee_ingredients_widget.dart';
import '../widgets/coffee_details/coffee_name_and_toppings_and_description_and_quantity_widget.dart';
import '../widgets/coffee_details/coffee_size_widget.dart';
import '../widgets/coffee_details/descritpion_coffee_image_widget.dart';

class CoffeeDetailsScreenBody extends StatelessWidget {
  const CoffeeDetailsScreenBody({super.key, required this.coffeeModel});
  final CoffeeModel coffeeModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        DescriptionCoffeeImageWidget(
          coffeeImage: coffeeModel.image,
        ),
        //Coffee Image
        SliverGap(15.h),
        //Coffee Quantity and name and order details
        CoffeeNameAndToppingsAndDescriptionAndQuantityWidget(
          coffeeModel: coffeeModel,
        ),
        SliverGap(15.h),
        CoffeeDescriptionWidget(
          coffeeDescription: coffeeModel.description,
        ),
        SliverGap(15.h),
        const CoffeeIngredientsWidget(), SliverGap(15.h),
        SliverGap(30.h),
        const CoffeeSizeWidget(),
        SliverGap(20.h),
        ProductPriceAndBuyNowWidget(
          coffee: coffeeModel,
        )
      ],
    );
  }
}
