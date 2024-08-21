import 'package:coffee_app/core/database/hive_data_base.dart';
import 'package:coffee_app/features/profile/presentation/widgets/setttings_container_widget.dart';
import 'package:flutter/material.dart';

class PrivacyAndPolicyWidget extends StatelessWidget {
  const PrivacyAndPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsContainerWidget(
      text: 'Privacy And Policy',
      onTap: () {
        HiveDatabase.instance.cartCoffeeBox!.clear();
      },
    );
  }
}
