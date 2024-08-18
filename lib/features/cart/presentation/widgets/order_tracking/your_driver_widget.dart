import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';

class YourDriverWidget extends StatelessWidget {
  const YourDriverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Your Driver'.hardCoded,
      style: regular12.copyWith(
        color: const Color(0xff50555C),
      ),
    );
  }
}
