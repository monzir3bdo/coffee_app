import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:flutter/material.dart';

import '../auth_text_field.dart';

class PasswordTextFieldWidget extends StatelessWidget {
  const PasswordTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AuthTextField(
        hintText: 'Enter Your Password'.hardCoded,
        prefixIcon: Icons.password,
      ),
    );
  }
}
