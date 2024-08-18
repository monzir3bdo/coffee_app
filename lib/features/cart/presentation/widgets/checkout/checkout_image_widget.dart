import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CheckoutImageWidget extends StatelessWidget {
  const CheckoutImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SvgPicture.asset(
        Assets.svgCheckout,
        width: 325.w,
        height: 300.h,
      ),
    );
  }
}
