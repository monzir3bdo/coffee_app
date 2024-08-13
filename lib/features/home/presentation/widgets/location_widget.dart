import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25.0, right: 25, top: 20.0, bottom: 20),
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.svgLocationIcon,
              colorFilter:
                  ColorFilter.mode(context.colors.textColor!, BlendMode.srcIn),
            ),
            Gap(5),
            Text(
              'Sudan , Khartoum',
              style: regular12.copyWith(
                color: context.colors.onboardingTitleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
