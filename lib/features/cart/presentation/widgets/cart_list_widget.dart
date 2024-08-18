import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'cart_item_widget.dart';

class CartListWidget extends StatelessWidget {
  const CartListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: context.screenHeight * 0.5,
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CartItemWidget();
          },
          separatorBuilder: (context, index) {
            return Gap(10);
          },
        ),
      ),
    );
  }
}
