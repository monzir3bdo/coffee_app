import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreenImageWidget extends StatelessWidget {
  const LoginScreenImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SvgPicture.asset(context.image.welcomeImage!),
    );
  }
}
