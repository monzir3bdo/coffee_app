import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ReceivingNotificationsWidget extends StatelessWidget {
  const ReceivingNotificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: 325,
        height: 61,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsetsDirectional.only(
            start: 15, end: 5, top: 21, bottom: 21),
        decoration: BoxDecoration(
          color: context.colors.containerColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Text(
              'Receive Notifications'.hardCoded,
              style: medium14.copyWith(
                color: context.colors.textColor,
              ),
            ),
            Spacer(),
            Transform.scale(
              scale: 0.6,
              child: Switch.adaptive(
                value: true,
                activeTrackColor: Colors.green,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
