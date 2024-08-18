import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/features/profile/presentation/widgets/log_out_dialoug_widget.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () {
          //todo: implement The Logout
          // context.goNamed(Routes.login.name);
          CustomDialogs.showLogoutDialog(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.svgLogout),
            const Gap(5),
            Text(
              'Logout'.hardCoded,
              style: medium14.copyWith(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
