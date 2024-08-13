import 'package:coffee_app/core/routes/routes_constants.dart';
import 'package:coffee_app/core/screens/main/bloc/main_cubit.dart';
import 'package:coffee_app/core/screens/main/screens/main_screen.dart';
import 'package:coffee_app/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:coffee_app/features/auth/presentation/screens/spalsh_screen.dart';
import 'package:coffee_app/features/cart/presentation/screens/cart_screen.dart';
import 'package:coffee_app/features/favourites/presentation/screens/favouries_screen.dart';
import 'package:coffee_app/features/home/presentation/bloc/home_cubit.dart';
import 'package:coffee_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../injection_container.dart';

final GoRouter router = GoRouter(
  navigatorKey: sl<GlobalKey<NavigatorState>>(),
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
    ),
    ShellRoute(
      pageBuilder: (context, state, child) {
        return CustomTransitionPage(
          child: child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: BlocProvider(
                create: (context) => MainCubit(),
                child: MainScreen(child: child),
              ),
            );
          },
        );
      },
      routes: [
        GoRoute(
          path: '/home',
          name: Routes.home.name,
          builder: (context, state) => BlocProvider(
            create: (context) => HomeCubit(),
            child: const HomeScreen(),
          ),
        ),
        GoRoute(
          path: '/cart',
          name: Routes.cart.name,
          builder: (context, state) => const CartScreen(),
        ),
        GoRoute(
          path: '/favourite',
          name: Routes.favourite.name,
          builder: (context, state) => const FavouriesScreen(),
        ),
        GoRoute(
          path: '/profile',
          name: Routes.profile.name,
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ],
);
