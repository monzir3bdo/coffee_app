import 'package:coffee_app/features/profile/presentation/widgets/change_theme_widget.dart';
import 'package:coffee_app/features/profile/presentation/widgets/profile_image_widget.dart';
import 'package:coffee_app/features/profile/presentation/widgets/profile_name_widget.dart';
import 'package:flutter/material.dart';

class ProfileNameAndImageAndChangeThemeWidget extends StatelessWidget {
  const ProfileNameAndImageAndChangeThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListTile(
        leading: ProfileImageWidget(),
        title: ProfileNameWidget(),
        trailing: ChangeThemeWidget(),
      ),
    );
  }
}
