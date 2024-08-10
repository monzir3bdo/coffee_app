import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class EnterYourAccountTextWidget extends StatelessWidget {
  const EnterYourAccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          'Please Enter Your Account Here'.hardCoded,
          style: light12.copyWith(
            fontSize: 14,
            color: context.colors.onboardingSubtitleColor,
          ),
        ),
      ),
    );
  }
}
