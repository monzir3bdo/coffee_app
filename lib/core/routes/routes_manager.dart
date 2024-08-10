import 'package:coffee_app/core/routes/routes_constants.dart';
import 'package:coffee_app/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:coffee_app/features/auth/presentation/screens/spalsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/screens/login_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    //todo: Maybe should i add model for the sake of the path and name differences
    GoRoute(
      path: RoutesConstants.splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: RoutesConstants.onboardingScreen,
      name: RoutesConstants.onboardingScreen,
      builder: (BuildContext context, _) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/login',
      name: Routes.login.name,
      builder: (context, state) => LoginScreen(),
    )
  ],
);
