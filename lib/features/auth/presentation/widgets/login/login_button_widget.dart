import 'package:coffee_app/core/routes/routes_constants.dart';
import 'package:coffee_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: AppButton(
          onPressed: () {
            context.goNamed(Routes.home.name);
          },
          title: 'Login',
        ),
      ),
    );
  }
}
