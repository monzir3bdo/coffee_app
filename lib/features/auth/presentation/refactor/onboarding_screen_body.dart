import 'package:coffee_app/core/widgets/app_button.dart';
import 'package:coffee_app/features/auth/data/dataSources/onboarding_data.dart';
import 'package:coffee_app/features/auth/presentation/widgets/coffee_beans_background_widget.dart';
import 'package:coffee_app/features/auth/presentation/widgets/onboarding_slider.dart';
import 'package:coffee_app/features/auth/presentation/widgets/skip_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/routes_constants.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CoffeeBeansBackgroundWidget(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SkipButtonWidget(),
          ),
          SliverToBoxAdapter(
            child: OnboardingSlider(
              onboardingModelList: onboardingData,
            ),
          ),
          SliverGap(137.h),
          SliverToBoxAdapter(
            child: AppButton(
              onPressed: () {
                context.goNamed(Routes.login.name);
              },
              title: 'Next',
            ),
          ),
        ],
      ),
    );
  }
}
