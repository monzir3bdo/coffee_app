import 'package:coffee_app/core/app/bloc/app_cubit.dart';
import 'package:coffee_app/core/models/coffee_model.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_name_widget.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_toppings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'coffee_quantity_widget.dart';
import 'coffee_rating_widget.dart';

class CoffeeNameAndToppingsAndDescriptionAndQuantityWidget
    extends StatelessWidget {
  const CoffeeNameAndToppingsAndDescriptionAndQuantityWidget(
      {super.key, required this.coffeeModel});
  final CoffeeModel coffeeModel;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 106.h,
        width: 325.w,
        margin: EdgeInsetsDirectional.symmetric(horizontal: 25.w),
        decoration: BoxDecoration(
          color: context.read<AppCubit>().isDarkMode
              ? const Color(0xff181A1E)
              : const Color(0xffF6F6F6),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Coffee Name -Toppings -Rating
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 15.0, top: 15, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CoffeeNameWidget(
                    coffeeName: coffeeModel.name,
                  ),
                  Gap(1.h),
                  const CoffeeToppingsWidget(),
                  const Gap(10),
                  CoffeeRatingWidget(
                    coffeeModel: coffeeModel,
                  )
                ],
              ),
            ),
            const CoffeeQuantityWidget()
            //Coffee Quantity
          ],
        ),
      ),
    );
  }
}
