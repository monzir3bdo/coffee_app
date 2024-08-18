import 'package:animated_digit/animated_digit.dart';
import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/models/coffee_model.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/features/home/presentation/bloc/coffee_description/coffee_description_cubit.dart';
import 'package:coffee_app/features/home/presentation/bloc/cup/cup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProductPriceInDescriptionScreenWidget extends StatelessWidget {
  const ProductPriceInDescriptionScreenWidget(
      {super.key, required this.coffee});

  final CoffeeModel coffee;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price'.hardCoded,
          style: medium14.copyWith(
            color: context.colors.textColor,
            fontSize: 12.sp,
          ),
        ),
        const Gap(10),
        BlocBuilder<CupCubit, CupState>(
          builder: (context, state) {
            return BlocBuilder<CoffeeDescriptionCubit, CoffeeDescriptionState>(
              builder: (context, state) {
                return AnimatedDigitWidget(
                  value: context
                      .read<CoffeeDescriptionCubit>()
                      .calculateOrderPrice(coffee
                          .prices[context.read<CupCubit>().selectedSize.name]),
                  textStyle: bold16.copyWith(
                    color: context.colors.textColor,
                    fontSize: 18.sp,
                  ),
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                  prefix: '\$',
                  fractionDigits: 2,
                );
              },
            );
          },
        )
      ],
    );
  }
}
