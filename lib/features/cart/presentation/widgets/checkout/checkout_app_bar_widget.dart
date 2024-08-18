import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CheckoutAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Checkout'.hardCoded,
        style: semiBold16.copyWith(
          color: context.colors.textColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 60.h);
}
