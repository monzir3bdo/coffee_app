import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password?',
            style: regular12.copyWith(color: const Color(0xff896E59)),
          ),
        ),
      ),
    );
  }
}
