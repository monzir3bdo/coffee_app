import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoNotHaveAnAccountWidget extends StatelessWidget {
  const DoNotHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            style: regular12.copyWith(
              fontSize: 14.sp,
              color: const Color(0xff979797),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Sign Up',
              style: semiBold16.copyWith(
                  fontSize: 14.sp, color: const Color(0xffA9612F)),
            ),
          )
        ],
      ),
    );
  }
}
