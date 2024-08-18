import 'package:coffee_app/features/cart/presentation/widgets/cart_checkout_button_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/cart_grand_total_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/cart_list_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/cart_title_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/cart_total_delivery_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../widgets/cart_total_items_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGap(15.h),
        const CartTitleWidget(),
        SliverGap(25.h),
        const CartListWidget(),
        SliverGap(35.h),
        const CartTotalItemsWidget(),
        SliverGap(10.h),
        const CartTotalDeliveryWidget(),
        SliverGap(10.h),
        const CartGrandTotalWidget(),
        SliverGap(20.h),
        const CartCheckoutButtonWidget(),
      ],
    );
  }
}
