import 'package:coffee_app/core/app/bloc/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeQuantityButtonWidget extends StatelessWidget {
  const CoffeeQuantityButtonWidget(
      {super.key,
      required this.iconData,
      this.onTap,
      this.height,
      this.width,
      this.lightColor,
      this.darkColor,
      this.iconColor});
  final IconData iconData;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final Color? lightColor;
  final Color? darkColor;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 30.h,
        width: width ?? 30.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: context.read<AppCubit>().isDarkMode
              ? darkColor ?? const Color(0xff46484B)
              : lightColor ?? const Color(0xffF0CEAB),
        ),
        child: Icon(
          iconData,
          color: context.read<AppCubit>().isDarkMode
              ? Colors.white
              : iconColor ?? const Color(0xff714A33),
        ),
      ),
    );
  }
}
