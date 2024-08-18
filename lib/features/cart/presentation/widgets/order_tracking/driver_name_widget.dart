import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_text_styles.dart';

class DriverNameWidget extends StatelessWidget {
  const DriverNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Eko Sanchez'.hardCoded,
      style: semiBold16.copyWith(
        fontSize: 12.sp,
        color: context.colors.textColor,
      ),
    );
  }
}
