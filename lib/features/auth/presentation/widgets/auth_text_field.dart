import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({super.key, this.hintText, this.prefixIcon});
  final String? hintText;
  final IconData? prefixIcon;
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
          prefixIcon: Icon(prefixIcon),
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
