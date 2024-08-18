import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/features/cart/presentation/widgets/order_tracking/call_button.dart';
import 'package:coffee_app/features/cart/presentation/widgets/order_tracking/driver_name_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/order_tracking/your_driver_widget.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverWidget extends StatelessWidget {
  const DriverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        width: 325.w,
        height: 74.h,
        decoration: BoxDecoration(
          color: context.darkMode
              ? const Color(0xff111419)
              : const Color(0xffECECEC),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: Image.asset(Assets.pngDeliveryman),
          title: const DriverNameWidget(),
          subtitle: const YourDriverWidget(),
          trailing: const CallButton(),
        ),
      ),
    );
  }
}
