import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';

class AssetsExtension extends ThemeExtension<AssetsExtension> {
  const AssetsExtension(
      {required this.onboardingImage1,
      required this.onboardingImage2,
      required this.onboardingImage3,
      required this.welcomeImage,
      required this.checkYourEmailImage});

  final String? onboardingImage1;
  final String? onboardingImage2;
  final String? onboardingImage3;
  final String? welcomeImage;
  final String? checkYourEmailImage;

  @override
  ThemeExtension<AssetsExtension> copyWith({
    String? onboardingImage1,
    String? onboardingImage2,
    String? onboardingImage3,
    String? welcomeImage,
    String? checkYourEmailImage,
  }) {
    return AssetsExtension(
        onboardingImage1: onboardingImage1,
        onboardingImage2: onboardingImage2,
        onboardingImage3: onboardingImage3,
        welcomeImage: welcomeImage,
        checkYourEmailImage: checkYourEmailImage);
  }

  @override
  ThemeExtension<AssetsExtension> lerp(
    covariant ThemeExtension<AssetsExtension>? other,
    double t,
  ) {
    if (other is! AssetsExtension) {
      return this;
    }
    return AssetsExtension(
        onboardingImage1: onboardingImage1,
        onboardingImage2: onboardingImage2,
        onboardingImage3: onboardingImage3,
        welcomeImage: welcomeImage,
        checkYourEmailImage: checkYourEmailImage);
  }

  static const AssetsExtension light = AssetsExtension(
    onboardingImage1: Assets.svgOnboardingLight1,
    onboardingImage2: Assets.svgOnboardingLight2,
    onboardingImage3: Assets.svgOnboardingLight3,
    welcomeImage: Assets.svgWelcomeLight,
    checkYourEmailImage: Assets.svgCheckYourEmailLight,
  );
  static const AssetsExtension dark = AssetsExtension(
    onboardingImage1: Assets.svgOnboardingDark1,
    onboardingImage2: Assets.svgOnboardingDark2,
    onboardingImage3: Assets.svgOnboardingDark3,
    welcomeImage: Assets.svgWelcomeDark,
    checkYourEmailImage: Assets.svgCheckYourEmailDark,
  );
}
