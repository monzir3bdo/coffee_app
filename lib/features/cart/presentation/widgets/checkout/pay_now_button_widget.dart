import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/routes/routes_constants.dart';
import 'package:coffee_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PayNowButtonWidget extends StatelessWidget {
  const PayNowButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 65.0),
        child: AppButton(
          radius: 20,
          backgroundColor: const Color(0xffA9612F),
          title: 'Pay Now'.hardCoded,
          onPressed: () {
            context.goNamed(Routes.orderTracking.name);
          },
        ),
      ),
    );
  }
}
