import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/screens/main/bloc/main_cubit.dart';
import 'package:coffee_app/core/theme/app_colors.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/assets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 75.h,
        width: context.screenWidth,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(.5), blurRadius: 0.5),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
          currentIndex: context.read<MainCubit>().currentPageIndex,
          onTap: (index) {
            context.read<MainCubit>().changePage(index, context);
          },
          selectedLabelStyle: regular12.copyWith(
            color: AppColors.iconsActiveColor,
          ),
          unselectedLabelStyle:
              regular12.copyWith(color: const Color(0xffC8C8C8)),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.svgHomeIcon,
                colorFilter: const ColorFilter.mode(
                  AppColors.iconsInactiveColor,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Home',
              activeIcon: SvgPicture.asset(Assets.svgHomeIcon),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svgCartIcon),
              label: 'Cart',
              activeIcon: SvgPicture.asset(Assets.svgCartIcon,
                  colorFilter: const ColorFilter.mode(
                    AppColors.iconsActiveColor,
                    BlendMode.srcIn,
                  )),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svgFavouriteIcon),
              label: 'Favourite',
              activeIcon: SvgPicture.asset(Assets.svgFavouriteIcon,
                  colorFilter: const ColorFilter.mode(
                    AppColors.iconsActiveColor,
                    BlendMode.srcIn,
                  )),
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.orange,
                )),
          ],
        ),
      ),
      body: SafeArea(child: child),
    );
  }
}
