import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartProductImageWidget extends StatelessWidget {
  const CartProductImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89.h,
      width: 89.h,
      decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(
            20,
          )),
    );
  }
}
