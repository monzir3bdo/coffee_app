import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/models/coffee_model.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CoffeeRatingWidget extends StatelessWidget {
  const CoffeeRatingWidget({super.key, required this.coffeeModel});
  final CoffeeModel coffeeModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(Assets.svgStar),
        const Gap(10),
        Text(
          '${coffeeModel.rating}',
          style: bold16.copyWith(
            color: context.colors.textColor,
            fontSize: 18.sp,
          ),
        ),
        const Gap(5),
        Text(
          '(${coffeeModel.numberOfReviews})',
          style: regular12.copyWith(
            color: const Color(0xff919499),
          ),
        )
      ],
    );
  }
}
