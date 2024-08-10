import 'package:coffee_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeBeanIndicator extends StatelessWidget {
  const CoffeeBeanIndicator({super.key, required this.pageIndex});
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        if (context.read<AuthCubit>().onboardingCurrentIndex == index) {
          return SvgPicture.asset(
            Assets.svgCoffeeActiveDot,
          );
        } else {
          return SvgPicture.asset(Assets.svgCoffeeInactiveDot);
        }
      }),
    );
  }
}
