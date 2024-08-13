import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileNameWidget extends StatelessWidget {
  const ProfileNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Monzir Abdalrahman',
      style: bold16.copyWith(
        fontSize: 24.sp,
        color: context.colors.textColor,
      ),
    );
  }
}
