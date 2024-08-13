import 'package:coffee_app/features/home/data/datasource/coffee_type_slider_data_sources.dart';
import 'package:coffee_app/features/home/presentation/bloc/home_cubit.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_slider_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CoffeeTypeSlider extends StatelessWidget {
  const CoffeeTypeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 42,
        child: Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: ListView.separated(
            padding: EdgeInsets.symmetric(
              horizontal: 25.w,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return CoffeeSliderItemWidget(
                    isActive:
                        context.read<HomeCubit>().activeCoffeeType == index,
                    coffeeTypeModel: CoffeeTypeSliderDataSources.types[index],
                    onTap: () {
                      context.read<HomeCubit>().changeCoffeeType(index);
                    },
                  );
                },
              );
            },
            separatorBuilder: (context, index) {
              return const Gap(5);
            },
            itemCount: 3,
          ),
        ),
      ),
    );
  }
}
