import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinueWithGoogleTextWidget extends StatelessWidget {
  const ContinueWithGoogleTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          'Or Continue with'.hardCoded,
          style: regular12.copyWith(
            color: const Color(0xff898A8D),
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
