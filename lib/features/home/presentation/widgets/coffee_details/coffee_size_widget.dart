import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/features/home/presentation/bloc/cup/cup_cubit.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_details/coffee_size_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoffeeSizeWidget extends StatelessWidget {
  const CoffeeSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: BlocBuilder<CupCubit, CupState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Size'.hardCoded,
                  style: medium14.copyWith(
                    fontSize: 12,
                    color: context.colors.textColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CoffeeSizeItemWidget(
                      coffeeSize: CoffeeSize.short,
                      isSelected: context.read<CupCubit>().selectedSize ==
                          CoffeeSize.short,
                      onTap: () {
                        context
                            .read<CupCubit>()
                            .changeCupSize(CoffeeSize.short);
                      },
                    ),
                    CoffeeSizeItemWidget(
                      coffeeSize: CoffeeSize.tall,
                      isSelected: context.read<CupCubit>().selectedSize ==
                          CoffeeSize.tall,
                      onTap: () {
                        context.read<CupCubit>().changeCupSize(CoffeeSize.tall);
                      },
                    ),
                    CoffeeSizeItemWidget(
                      coffeeSize: CoffeeSize.grande,
                      isSelected: context.read<CupCubit>().selectedSize ==
                          CoffeeSize.grande,
                      onTap: () {
                        context
                            .read<CupCubit>()
                            .changeCupSize(CoffeeSize.grande);
                      },
                    ),
                    CoffeeSizeItemWidget(
                      coffeeSize: CoffeeSize.venti,
                      isSelected: context.read<CupCubit>().selectedSize ==
                          CoffeeSize.venti,
                      onTap: () {
                        context
                            .read<CupCubit>()
                            .changeCupSize(CoffeeSize.venti);
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
