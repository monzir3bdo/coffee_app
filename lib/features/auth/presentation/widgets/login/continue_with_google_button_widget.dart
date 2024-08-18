import 'package:coffee_app/core/theme/app_colors.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ContinueWithGoogleButtonWidget extends StatelessWidget {
  const ContinueWithGoogleButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 50.h,
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              backgroundColor: AppColors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.pngGoogle),
                Gap(10.w),
                Text(
                  'Google',
                  style: medium14.copyWith(
                    color: const Color(0xff50555C),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
