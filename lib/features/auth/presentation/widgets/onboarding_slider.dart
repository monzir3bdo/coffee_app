import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/features/auth/data/models/onboarding_model.dart';
import 'package:coffee_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'coffe_bean_indicator.dart';

class OnboardingSlider extends StatelessWidget {
  const OnboardingSlider({super.key, required this.onboardingModelList});

  final List<OnboardingModel> onboardingModelList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight * 0.65,
      child: PageView.builder(
        controller: context.read<AuthCubit>().onboardingController,
        itemCount: onboardingModelList.length,
        onPageChanged: (index) {
          context.read<AuthCubit>().onboardingIndexChanged(index);
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              SvgPicture.asset(context.image.onboardingImage1!),
              Gap(48.h),
              Text(onboardingModelList[index].title),
              Gap(10.h),
              Text(onboardingModelList[index].subtitle),
              Gap(20.h),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return CoffeeBeanIndicator(
                    pageIndex: context.read<AuthCubit>().onboardingCurrentIndex,
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
