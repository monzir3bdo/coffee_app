import 'package:coffee_app/features/profile/presentation/widgets/about_us_widget.dart';
import 'package:coffee_app/features/profile/presentation/widgets/contacts_us_widget.dart';
import 'package:coffee_app/features/profile/presentation/widgets/privacy_and_policy_widget.dart';
import 'package:coffee_app/features/profile/presentation/widgets/settings_and_edit_profile_widget.dart';
import 'package:coffee_app/features/profile/presentation/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../widgets/log_out_widget.dart';
import '../widgets/profile_name_and_image_and_change_theme_widget.dart';
import '../widgets/receiving_notifications_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGap(15.h),
        const SettingsAndEditProfileWidget(),
        SliverGap(25.h),
        const ProfileNameAndImageAndChangeThemeWidget(),
        SliverGap(20.h),
        const ReceivingNotificationsWidget(),
        SliverGap(23.h),
        const AboutUsWidget(),
        SliverGap(23.h),
        const TermsAndConditionWidget(),
        SliverGap(23.h),
        const PrivacyAndPolicyWidget(),
        SliverGap(23.h),
        const ContactsUsWidget(),
        SliverGap(25.h),
        const LogOutWidget()
      ],
    );
  }
}
