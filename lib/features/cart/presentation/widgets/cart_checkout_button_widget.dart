import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/routes/routes_constants.dart';
import 'package:coffee_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CartCheckoutButtonWidget extends StatelessWidget {
  const CartCheckoutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0),
        child: AppButton(
          height: 55.h,
          width: 250.w,
          backgroundColor: const Color(0xffA9612F),
          title: 'Checkout'.hardCoded,
          onPressed: () {
            context.pushNamed(Routes.checkout.name);
          },
          radius: 20,
        ),
      ),
    );
  }
}
