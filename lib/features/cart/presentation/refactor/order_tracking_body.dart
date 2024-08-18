import 'package:coffee_app/features/cart/presentation/widgets/order_tracking/delivery_stepper_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/order_tracking/driver_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/order_tracking/map_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/order_tracking/return_to_home_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OrderTrackingBody extends StatelessWidget {
  const OrderTrackingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGap(25.h),
        const MapWidget(),
        SliverGap(20.h),
        const DriverWidget(),
        SliverGap(25.h),
        const DeliveryStepperWidget(),
        SliverGap(20.h),
        ReturnToHomeButton(),
      ],
    );
  }
}
