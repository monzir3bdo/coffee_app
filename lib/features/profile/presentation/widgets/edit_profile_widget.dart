import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 30.w,
        height: 30.h,
        decoration: BoxDecoration(
            color: context.colors.containerColor,
            borderRadius: BorderRadius.circular(8)),
        child: SvgPicture.asset(
          Assets.svgEdit,
          width: 20,
          height: 20,
          fit: BoxFit.scaleDown,
          colorFilter:
              ColorFilter.mode(context.colors.textColor!, BlendMode.srcIn),
        ),
      ),
    );
  }
}
