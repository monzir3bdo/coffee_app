import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/theme/app_text_styles.dart';

class CartGrandTotalWidget extends StatelessWidget {
  const CartGrandTotalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: context.darkMode
                  ? const Color(0xff1E1E1E)
                  : const Color(0xffE0E0E0),
            ),
            Gap(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total:'.hardCoded,
                  style: medium14.copyWith(
                    color: context.colors.textColor,
                  ),
                ),
                Text(
                  r'$100.00'.hardCoded,
                  style: medium14.copyWith(
                    color: context.colors.textColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
