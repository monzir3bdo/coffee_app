import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/features/cart/presentation/widgets/checkout/checkout_grand_total_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/checkout/payment_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: 323.w,
        height: 157.h,
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        padding: EdgeInsets.only(
          top: 25.h,
          left: 22.w,
          right: 23.w,
          bottom: 28.w,
        ),
        decoration: BoxDecoration(
          color: context.darkMode
              ? const Color(0xff111419)
              : const Color(0xffECECEC),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PaymentMethodWidget(),
            CheckoutGrandTotalWidget(),
          ],
        ),
      ),
    );
  }
}
