import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_details/coffee_quantity_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../bloc/coffee_description/coffee_description_cubit.dart';

class CoffeeQuantityWidget extends StatelessWidget {
  const CoffeeQuantityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsetsDirectional.only(end: 8.0),
          child: Row(
            children: [
              CoffeeQuantityButtonWidget(
                iconData: Icons.remove,
                onTap: () {
                  context
                      .read<CoffeeDescriptionCubit>()
                      .decreaseCoffeeQuantity();
                },
              ),
              const Gap(15),
              BlocBuilder<CoffeeDescriptionCubit, CoffeeDescriptionState>(
                builder: (context, state) {
                  return AnimatedSwitcher(
                    key: const Key('value'),
                    duration: const Duration(milliseconds: 300),
                    child: Text(
                      context
                          .read<CoffeeDescriptionCubit>()
                          .numberOfCoffee
                          .toString(),
                      style: semiBold16.copyWith(
                        color: context.colors.textColor,
                      ),
                    ),
                  );
                },
              ),
              const Gap(15),
              CoffeeQuantityButtonWidget(
                iconData: Icons.add,
                onTap: () {
                  context
                      .read<CoffeeDescriptionCubit>()
                      .increaseCoffeeQuantity();
                },
              ),
            ],
          )),
    );
  }
}
