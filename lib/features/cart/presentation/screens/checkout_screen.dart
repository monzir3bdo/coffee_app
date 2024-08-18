import 'package:coffee_app/features/cart/presentation/refactor/checkout_body.dart';
import 'package:coffee_app/features/cart/presentation/widgets/checkout/checkout_app_bar_widget.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CheckoutAppBarWidget(),
      body: CheckoutBody(),
    );
  }
}
