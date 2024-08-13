import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:flutter/material.dart';

import '../../../../injection_container.dart';
import '../models/onboarding_model.dart';

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    image: sl<GlobalKey<NavigatorState>>()
        .currentState!
        .context
        .image
        .onboardingImage1!,
    title: 'Old Fashioned Coffee that taste good and great',
    subtitle:
        'We Provide a variety of coffee grounds that are old-fashioned and also maintained',
  ),
  OnboardingModel(
    image: sl<GlobalKey<NavigatorState>>()
        .currentState!
        .context
        .image
        .onboardingImage2!,
    title: 'Old Fashioned Coffee that taste good and great',
    subtitle:
        'We Provide a variety of coffee grounds that are old-fashioned and also maintained',
  ),
  OnboardingModel(
    image: sl<GlobalKey<NavigatorState>>()
        .currentState!
        .context
        .image
        .onboardingImage3!,
    title: 'Old Fashioned Coffee that taste good and great',
    subtitle:
        'We Provide a variety of coffee grounds that are old-fashioned and also maintained',
  ),
];
