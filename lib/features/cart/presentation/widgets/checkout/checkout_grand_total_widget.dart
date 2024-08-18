import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutGrandTotalWidget extends StatelessWidget {
  const CheckoutGrandTotalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total'.hardCoded,
          style: light12.copyWith(
            fontSize: 14.sp,
            color: context.colors.textColor,
          ),
        ),
        RichText(
          text: TextSpan(
              text: r'$',
              style: medium14.copyWith(
                fontSize: 18.sp,
                color: const Color(0xffCB7541),
              ),
              children: [
                TextSpan(
                  text: '100.00'.hardCoded,
                  style: semiBold16.copyWith(
                    color: context.colors.textColor,
                    fontSize: 18.sp,
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
