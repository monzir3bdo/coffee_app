import 'package:coffee_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:coffee_app/features/auth/presentation/refactor/onboarding_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: BlocProvider(
          create: (context) => AuthCubit(),
          child: const OnboardingScreenBody(),
        ),
      ),
    );
  }
}
