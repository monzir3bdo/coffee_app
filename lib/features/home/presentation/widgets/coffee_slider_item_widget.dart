import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/features/home/data/models/coffee_type_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CoffeeSliderItemWidget extends StatelessWidget {
  const CoffeeSliderItemWidget({
    super.key,
    required this.isActive,
    required this.coffeeTypeModel,
    required this.onTap,
  });
  final CoffeeTypeModel coffeeTypeModel;
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 116.w,
        height: 42.h,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: context.colors.coffeeTypeSlider,
          borderRadius: BorderRadius.circular(10),
          border: isActive
              ? Border.all(
                  color: const Color(0xff9B6842),
                )
              : Border.all(
                  color: context.colors.textColor!.withOpacity(0.3),
                ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(coffeeTypeModel.coffeeImage),
            const Gap(5),
            Text(
              coffeeTypeModel.coffeeName,
              style: regular12.copyWith(
                fontSize: 14,
                color: isActive
                    ? const Color(0xff9B6842)
                    : context.colors.textColor!,
              ),
            )
          ],
        ),
      ),
    );
  }
}
