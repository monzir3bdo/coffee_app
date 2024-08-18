import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: 328.w,
        height: 298.h,
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.indigo,
        ),
      ),
    );
  }
}
