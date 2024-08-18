import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CheckoutAddCardWidget extends StatelessWidget {
  const CheckoutAddCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151.w,
      height: 60.h,
      padding: EdgeInsetsDirectional.only(
        start: 23.w,
        top: 18.h,
        bottom: 18.h,
      ),
      decoration: BoxDecoration(
        color: context.darkMode
            ? const Color(0xff111419)
            : const Color(0xffECECEC),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.svgCard,
            colorFilter: context.darkMode
                ? null
                : ColorFilter.mode(context.colors.textColor!, BlendMode.srcIn),
          ),
          Gap(8.w),
          Text(
            'Add Card',
            style: medium14.copyWith(
              color: context.colors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
