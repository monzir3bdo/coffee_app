import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryStepperWidget extends StatelessWidget {
  const DeliveryStepperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 160.h,
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: SvgPicture.asset(Assets.svgClock),
              title: Text(
                'Delivery Time'.hardCoded,
                style: medium14.copyWith(
                  color: context.colors.textColor,
                ),
              ),
              subtitle: const Text('15 Minutes'),
            ),
            ListTile(
              leading: SvgPicture.asset(Assets.svgClock),
              title: Text(
                'Delivery Time'.hardCoded,
                style: medium14.copyWith(
                  color: context.colors.textColor,
                ),
              ),
              subtitle: const Text('15 Minutes'),
            ),
          ],
        ),
      ),
    );
  }
}
