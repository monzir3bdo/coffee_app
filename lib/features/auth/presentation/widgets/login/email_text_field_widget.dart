import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';

class EmailTextFieldWidget extends StatelessWidget {
  const EmailTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AuthTextField(
        hintText: 'Enter Your Email'.hardCoded,
        icon: Assets.svgMail,
      ),
    );
  }
}
