import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../generated/assets.dart';

class CallButton extends StatelessWidget {
  const CallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 44.h,
        width: 44.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff9B6842),
        ),
        child: SvgPicture.asset(
          Assets.svgCall,
          height: 24.w,
          width: 24.w,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
