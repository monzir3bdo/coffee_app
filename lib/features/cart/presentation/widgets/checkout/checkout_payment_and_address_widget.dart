import 'package:coffee_app/features/cart/presentation/widgets/checkout/checkout_add_card_widget.dart';
import 'package:coffee_app/features/cart/presentation/widgets/checkout/checkout_address_widget.dart';
import 'package:flutter/material.dart';

class CheckoutPaymentAndAddressWidget extends StatelessWidget {
  const CheckoutPaymentAndAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CheckoutAddCardWidget(),
            CheckoutAddressWidget(),
          ],
        ),
      ),
    );
  }
}
