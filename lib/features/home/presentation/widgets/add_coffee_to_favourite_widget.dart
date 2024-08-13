import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCoffeeToFavouriteWidget extends StatelessWidget {
  const AddCoffeeToFavouriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey,
        gradient: LinearGradient(
          colors: [
            Color(0xffFFFFFF),
            Color(0xffFFFFFF).withOpacity(0.2),
          ],
        ),
      ),
      child: SvgPicture.asset(
        Assets.svgHeart,
        height: 20.h,
        width: 20.w,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
