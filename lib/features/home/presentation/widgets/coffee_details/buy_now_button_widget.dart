import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/routes/routes_constants.dart';
import 'package:coffee_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BuyNowButtonWidget extends StatelessWidget {
  const BuyNowButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      width: 178.w,
      height: 53.h,
      radius: 15,
      title: 'Buy Now'.hardCoded,
      backgroundColor: const Color(0xffA9612F),
      onPressed: () {
        context.pushNamed(Routes.cart.name);
      },
    );
  }
}
