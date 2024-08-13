import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({super.key, this.hintText, required this.icon});
  final String? hintText;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          hintStyle: light12.copyWith(
            fontSize: 14,
            color: context.colors.onboardingSubtitleColor,
          ),
          fillColor: context.colors.textFieldFilledColor,
          prefixIcon: SvgPicture.asset(
            icon,
            height: 24,
            width: 24,
            fit: BoxFit.scaleDown,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: context.colors.textFieldBorderColor!,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: context.colors.textFieldBorderColor!,
            ),
          ),
        ),
      ),
    );
  }
}
