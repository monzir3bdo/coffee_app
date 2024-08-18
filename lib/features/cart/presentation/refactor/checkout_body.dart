import 'package:coffee_app/features/cart/presentation/widgets/checkout/checkout_image_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/checkout/pay_now_button_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/checkout/payment_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../widgets/checkout/checkout_payment_and_address_widget.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGap(5.h),
        const CheckoutImageWidget(),
        SliverGap(25.h),
        const PaymentWidget(),
        SliverGap(15.h),
        const CheckoutPaymentAndAddressWidget(),
        SliverGap(44.h),
        const PayNowButtonWidget()
      ],
    );
  }
}
