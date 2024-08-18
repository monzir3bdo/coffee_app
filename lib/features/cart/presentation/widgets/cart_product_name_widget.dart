import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartProductNameWidget extends StatelessWidget {
  const CartProductNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Product Name'.hardCoded,
      style: semiBold16.copyWith(
        color: context.colors.textColor,
        fontSize: 12.sp,
      ),
    );
  }
}
