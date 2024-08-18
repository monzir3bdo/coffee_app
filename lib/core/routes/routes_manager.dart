import 'package:coffee_app/core/routes/routes_constants.dart';
import 'package:coffee_app/core/screens/main/bloc/main_cubit.dart';
import 'package:coffee_app/core/screens/main/screens/main_screen.dart';
import 'package:coffee_app/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:coffee_app/features/auth/presentation/screens/spalsh_screen.dart';
import 'package:coffee_app/features/cart/presentation/screens/cart_screen.dart';
import 'package:coffee_app/features/cart/presentation/screens/checkout_screen.dart';
import 'package:coffee_app/features/cart/presentation/screens/order_tracking_screen.dart';
import 'package:coffee_app/features/favourites/presentation/bloc/get_favourite/get_favourite_bloc.dart';
import 'package:coffee_app/features/favourites/presentation/favourite/favourite_cubit.dart';
import 'package:coffee_app/features/favourites/presentation/screens/favouries_screen.dart';
import 'package:coffee_app/features/home/presentation/bloc/home_cubit.dart';
import 'package:coffee_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/home/presentation/bloc/cup/cup_cubit.dart';
import '../../features/home/presentation/screens/coffee_details_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../injection_container.dart';

final shellNavigationKey = GlobalKey<NavigatorState>();
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
      builder: (context, state) => const LoginScreen(),
    ),
    ShellRoute(
      navigatorKey: shellNavigationKey,
      pageBuilder: (context, state, child) {
        return CustomTransitionPage(
          child: child,
          transitionsBuilder: (context, animation1, animation2, child) {
            return MultiBlocProvider(providers: [
              BlocProvider(create: (context) => sl<MainCubit>()),
              BlocProvider(create: (context) => sl<FavouriteCubit>()),
              BlocProvider(
                create: (context) => sl<GetFavouriteBloc>()
                  ..add(const GetFavouriteEvent.getAllFavouritesEvent()),
              ),
            ], child: MainScreen(child: child));
          },
        );
      },
      routes: [
        GoRoute(
            path: '/home',
            parentNavigatorKey: shellNavigationKey,
            name: Routes.home.name,
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder: (context, animation1, animation2, child) {
                  return child;
                },
                child: BlocProvider(
                  create: (context) => HomeCubit(),
                  child: const HomeScreen(),
                ),
                fullscreenDialog: true,
              );
            }),
        GoRoute(
          path: '/cart',
          name: Routes.cart.name,
          parentNavigatorKey: shellNavigationKey,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              transitionsBuilder: (context, animation1, animation2, child) {
                return child;
              },
              child: const CartScreen(),
              fullscreenDialog: true,
            );
          },
        ),
        GoRoute(
          path: '/favourite',
          parentNavigatorKey: shellNavigationKey,
          name: Routes.favourite.name,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const FavouriteScreen(),
              transitionsBuilder: (context, animation1, animation2, child) {
                return child;
              },
            );
          },
        ),
        GoRoute(
          path: '/profile',
          parentNavigatorKey: shellNavigationKey,
          name: Routes.profile.name,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              transitionsBuilder: (context, animation1, animation2, child) {
                return child;
              },
              child: const ProfileScreen(),
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: '/coffeeDetails/:id',
      name: Routes.coffeeDetails.name,
      builder: (context, state) {
        final coffeeId = state.pathParameters['id']!;
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: sl<FavouriteCubit>(),
            ),
            BlocProvider.value(
              value: sl<GetFavouriteBloc>(),
            ),
            BlocProvider(create: (context) => sl<CupCubit>())
          ],
          child: CoffeeDetailsScreen(
            productId: int.parse(coffeeId),
          ),
        );
      },
    ),
    GoRoute(
      path: '/checkout',
      name: Routes.checkout.name,
      builder: (context, state) => const CheckoutScreen(),
    ),
    GoRoute(
      path: '/orderTrack',
      name: Routes.orderTracking.name,
      builder: (context, state) => const OrderTrackingScreen(),
    ),
  ],
);
