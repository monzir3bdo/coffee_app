import 'package:coffee_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.onPressed,
      this.title,
      this.backgroundColor,
      this.height,
      this.width,
      this.radius});
  final VoidCallback? onPressed;
  final String? title;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50.h,
      width: width ?? 249.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(249.w, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 20),
          ),
          backgroundColor: backgroundColor ?? AppColors.darkBrown,
        ),
        child: Text(
          title ?? 'Button',
          style: const TextStyle(
            color: AppColors.lightBrown,
          ),
        ),
      ),
    );
  }
}
