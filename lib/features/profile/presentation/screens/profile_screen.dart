import 'package:coffee_app/features/profile/presentation/widgets/about_us_widget.dart';
import 'package:coffee_app/features/profile/presentation/widgets/contacts_us_widget.dart';
import 'package:coffee_app/features/profile/presentation/widgets/privacy_and_policy_widget.dart';
import 'package:coffee_app/features/profile/presentation/widgets/settings_and_edit_profile_widget.dart';
import 'package:coffee_app/features/profile/presentation/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/log_out_widget.dart';
import '../widgets/profile_name_and_image_and_change_theme_widget.dart';
import '../widgets/receiving_notifications_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverGap(15),
        SettingsAndEditProfileWidget(),
        SliverGap(25),
        ProfileNameAndImageAndChangeThemeWidget(),
        SliverGap(20),
        ReceivingNotificationsWidget(),
        SliverGap(23),
        AboutUsWidget(),
        SliverGap(23),
        TermsAndConditionWidget(),
        SliverGap(23),
        PrivacyAndPolicyWidget(),
        SliverGap(23),
        ContactsUsWidget(),
        SliverGap(25),
        LogOutWidget()
      ],
    );
  }
}
