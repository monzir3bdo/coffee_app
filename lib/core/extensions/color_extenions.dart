import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class ColorExtensions extends ThemeExtension<ColorExtensions> {
  const ColorExtensions({
    required this.onboardingTitleColor,
    required this.onboardingSubtitleColor,
    required this.textFieldBorderColor,
    required this.textFieldFilledColor,
    required this.textColor,
    required this.coffeeTypeSlider,
    required this.containerColor,
  });

  final Color? onboardingTitleColor;
  final Color? onboardingSubtitleColor;
  final Color? textFieldBorderColor;
  final Color? textFieldFilledColor;
  final Color? textColor;
  final Color? coffeeTypeSlider;
  final Color? containerColor;

  @override
  ThemeExtension<ColorExtensions> copyWith({
    Color? onboardingTitleColor,
    Color? onboardingSubtitleColor,
    Color? textFieldBorderColor,
    Color? textColor,
  }) {
    return ColorExtensions(
      onboardingTitleColor: onboardingTitleColor,
      onboardingSubtitleColor: onboardingSubtitleColor,
      textFieldBorderColor: textFieldBorderColor,
      textFieldFilledColor: textFieldFilledColor,
      textColor: textColor,
      coffeeTypeSlider: coffeeTypeSlider,
      containerColor: containerColor,
    );
  }

  @override
  ThemeExtension<ColorExtensions> lerp(
    covariant ThemeExtension<ColorExtensions>? other,
    double t,
  ) {
    if (other is! ColorExtensions) {
      return this;
    }
    return ColorExtensions(
      onboardingTitleColor: onboardingTitleColor,
      onboardingSubtitleColor: onboardingSubtitleColor,
      textFieldBorderColor: textFieldBorderColor,
      textFieldFilledColor: textFieldFilledColor,
      textColor: textColor,
      coffeeTypeSlider: coffeeTypeSlider,
      containerColor: containerColor,
    );
  }

  static const ColorExtensions light = ColorExtensions(
    onboardingTitleColor: Color(0xff552B1B),
    onboardingSubtitleColor: Color(0xff896E59),
    textFieldBorderColor: Color(0xffC9B7A8),
    textFieldFilledColor: Color(0xffffffff),
    textColor: AppColors.black,
    coffeeTypeSlider: Color(0xffF6F6F6),
    containerColor: Color(0xffE0E0E0),
  );
  static const ColorExtensions dark = ColorExtensions(
    onboardingTitleColor: Color(0xffF0CEAB),
    onboardingSubtitleColor: Color(0xff896E59),
    textFieldBorderColor: Color(0xff1E1E1E),
    textFieldFilledColor: Color(0xff000000),
    textColor: AppColors.white,
    coffeeTypeSlider: Color(0xff141921),
    containerColor: Color(0xff3D3F43),
  );
}
