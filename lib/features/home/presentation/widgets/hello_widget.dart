import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25.0, right: 25, top: 20.0, bottom: 5),
        child: Text(
          'Hello,'.hardCoded,
          style: bold16.copyWith(
            fontSize: 24.sp,
            color: context.colors.textColor,
          ),
        ),
      ),
    );
  }
}
