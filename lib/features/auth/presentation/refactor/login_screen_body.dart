import 'package:coffee_app/features/auth/presentation/widgets/login/do_not_have_an_account_widget.dart';
import 'package:coffee_app/features/auth/presentation/widgets/login/forget_password_widget.dart';
import 'package:coffee_app/features/auth/presentation/widgets/login/password_text_field_widget.dart';
import 'package:coffee_app/features/auth/presentation/widgets/login/welcome_back_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../widgets/login/continue_with_google_button_widget.dart';
import '../widgets/login/continue_with_google_text_widget.dart';
import '../widgets/login/email_text_field_widget.dart';
import '../widgets/login/enter_your_account_text_widget.dart';
import '../widgets/login/login_button_widget.dart';
import '../widgets/login/login_screen_image_widget.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const LoginScreenImageWidget(),
        SliverGap(25.h),
        const WelcomeBackWidget(),
        SliverGap(5.h),
        const EnterYourAccountTextWidget(),
        SliverGap(20.h),
        const EmailTextFieldWidget(),
        SliverGap(14.h),
        const PasswordTextFieldWidget(),
        SliverGap(13.h),
        const ForgetPasswordWidget(),
        SliverGap(15.h),
        const LoginButtonWidget(),
        SliverGap(30.h),
        const ContinueWithGoogleTextWidget(),
        SliverGap(20.h),
        const ContinueWithGoogleButtonWidget(),
        SliverGap(5.h),
        const DoNotHaveAnAccountWidget(),
      ],
    );
  }
}
