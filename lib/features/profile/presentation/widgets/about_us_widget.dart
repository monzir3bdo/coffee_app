import 'package:coffee_app/features/profile/presentation/widgets/setttings_container_widget.dart';
import 'package:flutter/material.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsContainerWidget(text: 'About Us', onTap: () {});
  }
}
