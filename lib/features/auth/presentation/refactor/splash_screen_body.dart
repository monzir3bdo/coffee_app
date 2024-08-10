import 'package:coffee_app/features/auth/presentation/widgets/coffee_beans_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../generated/assets.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CoffeeBeansBackgroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(Assets.svgAppLogo),
          ),
          const Gap(20),
          const Text(
            'Coffee',
            style: TextStyle(
              fontFamily: 'Sofia-Regular',
              fontSize: 56,
            ),
          )
        ],
      ),
    );
  }
}
