import 'package:coffee_app/core/app/bloc/app_cubit.dart';
import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangeThemeWidget extends StatelessWidget {
  const ChangeThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<AppCubit>().changeTheme();
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: context.colors.containerColor,
        ),
        child: SvgPicture.asset(
          height: 15,
          width: 15,
          fit: BoxFit.scaleDown,
          context.read<AppCubit>().isDarkMode
              ? Assets.svgLightMode
              : Assets.svgDarkMode,
          colorFilter:
              ColorFilter.mode(context.colors.textColor!, BlendMode.srcIn),
        ),
      ),
    );
  }
}
