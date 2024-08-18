import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CoffeeDescriptionWidget extends StatelessWidget {
  const CoffeeDescriptionWidget({super.key, required this.coffeeDescription});
  final String coffeeDescription;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description'.hardCoded,
              style: medium14.copyWith(
                color: context.colors.textColor,
                fontSize: 12,
              ),
            ),
            Gap(10.h),
            Text(
              coffeeDescription.hardCoded,
              style: regular12.copyWith(
                color: const Color(0xff434549),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
