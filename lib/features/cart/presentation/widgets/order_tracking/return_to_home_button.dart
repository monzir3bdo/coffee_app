import 'package:coffee_app/core/routes/routes_constants.dart';
import 'package:coffee_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ReturnToHomeButton extends StatelessWidget {
  const ReturnToHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w),
        child: AppButton(
          title: 'Return to Home',
          onPressed: () {
            context.goNamed(Routes.cart.name);
          },
        ),
      ),
    );
  }
}
