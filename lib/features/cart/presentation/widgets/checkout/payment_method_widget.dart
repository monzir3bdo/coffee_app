import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/theme/app_text_styles.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Assets.pngMasterCard),
        Column(
          children: [
            Text(
              'Payment Method'.hardCoded,
              style: light12.copyWith(
                fontSize: 14.sp,
                color: context.colors.textColor,
              ),
            ),
            const Gap(15),
            Text(
              '*******15543',
              style: semiBold16.copyWith(
                fontSize: 14.sp,
                color: context.colors.textColor,
              ),
            )
          ],
        ),
      ],
    );
  }
}
