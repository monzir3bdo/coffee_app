import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReceivingNotificationsWidget extends StatelessWidget {
  const ReceivingNotificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: 325.w,
        height: 61.h,
        margin: EdgeInsets.symmetric(horizontal: 24.w),
        padding: EdgeInsetsDirectional.only(
            start: 15.w, end: 5.w, top: 21.h, bottom: 21.h),
        decoration: BoxDecoration(
          color: context.colors.containerColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Text(
              'Receive Notifications'.hardCoded,
              style: medium14.copyWith(
                color: context.colors.textColor,
              ),
            ),
            const Spacer(),
            Transform.scale(
              scale: 0.6,
              child: Switch.adaptive(
                value: true,
                activeTrackColor: Colors.green,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
