import 'package:flutter/material.dart';

class ColorExtensions extends ThemeExtension<ColorExtensions> {
  const ColorExtensions({
    required this.onboardingTitleColor,
    required this.onboardingSubtitleColor,
    required this.textFieldBorderColor,
    required this.textFieldFilledColor,
  });

  final Color? onboardingTitleColor;
  final Color? onboardingSubtitleColor;
  final Color? textFieldBorderColor;
  final Color? textFieldFilledColor;

  @override
  ThemeExtension<ColorExtensions> copyWith({
    Color? onboardingTitleColor,
    Color? onboardingSubtitleColor,
    Color? textFieldBorderColor,
  }) {
    return ColorExtensions(
      onboardingTitleColor: onboardingTitleColor,
      onboardingSubtitleColor: onboardingSubtitleColor,
      textFieldBorderColor: textFieldBorderColor,
      textFieldFilledColor: textFieldFilledColor,
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
    );
  }

  static const ColorExtensions light = ColorExtensions(
      onboardingTitleColor: Color(0xff552B1B),
      onboardingSubtitleColor: Color(0xff896E59),
      textFieldBorderColor: Color(0xffC9B7A8),
      textFieldFilledColor: Color(0xffffffff));
  static const ColorExtensions dark = ColorExtensions(
    onboardingTitleColor: Color(0xffF0CEAB),
    onboardingSubtitleColor: Color(0xff896E59),
    textFieldBorderColor: Color(0xff1E1E1E),
    textFieldFilledColor: Color(0xff000000),
  );
}
