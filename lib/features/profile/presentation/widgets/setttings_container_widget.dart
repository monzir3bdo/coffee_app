import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SettingsContainerWidget extends StatelessWidget {
  const SettingsContainerWidget(
      {super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        child: Container(
          width: 325,
          height: 61,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsetsDirectional.only(
              start: 15, end: 10, top: 21, bottom: 21),
          decoration: BoxDecoration(
            color: context.colors.containerColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Text(
                text,
                style: medium14.copyWith(
                  color: context.colors.textColor,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
                color: context.colors.textColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
