import 'package:coffee_app/features/cart/presentation/refactor/order_tracking_body.dart';
import 'package:coffee_app/features/cart/presentation/widgets/order_tracking/order_tracking_app_bar.dart';
import 'package:flutter/material.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: OrderTrackingAppbar(),
      body: OrderTrackingBody(),
    );
  }
}
