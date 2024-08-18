import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartProductToppingsWidget extends StatelessWidget {
  const CartProductToppingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Product Toppings'.hardCoded,
      style: medium14.copyWith(
        color: context.darkMode
            ? const Color(0xff919499)
            : const Color(0xff50555C),
        fontSize: 12.sp,
      ),
    );
  }
}
