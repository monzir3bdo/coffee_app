import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeBackWidget extends StatelessWidget {
  const WelcomeBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          "Welcome Back".hardCoded,
          style: semiBold16.copyWith(
            fontSize: 20.sp,
            color: context.colors.onboardingTitleColor,
          ),
        ),
      ),
    );
  }
}
