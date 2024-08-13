import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/features/profile/presentation/widgets/edit_profile_widget.dart';
import 'package:flutter/material.dart';

class SettingsAndEditProfileWidget extends StatelessWidget {
  const SettingsAndEditProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(),
          Text(
            'Settings'.hardCoded,
            style: semiBold16.copyWith(
              color: context.colors.textColor,
            ),
          ),
          const Spacer(),
          const EditProfileWidget(),
        ],
      ),
    );
  }
}
