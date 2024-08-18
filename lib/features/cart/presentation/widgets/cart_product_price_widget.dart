import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartProductPriceWidget extends StatelessWidget {
  const CartProductPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: r'$',
        style: medium14.copyWith(
          color: const Color(0xffCB7541),
          fontSize: 16.sp,
        ),
        children: [
          TextSpan(
            text: '20.00',
            style: medium14.copyWith(
              fontSize: 12.sp,
              color: context.colors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
