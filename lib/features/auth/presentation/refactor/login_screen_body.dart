import 'package:coffee_app/features/auth/presentation/widgets/login/do_not_have_an_account_widget.dart';
import 'package:coffee_app/features/auth/presentation/widgets/login/forget_password_widget.dart';
import 'package:coffee_app/features/auth/presentation/widgets/login/password_text_field_widget.dart';
import 'package:coffee_app/features/auth/presentation/widgets/login/welcome_back_widget.dart';
import 'package:flutter/material.dart';
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
    return const CustomScrollView(
      slivers: [
        LoginScreenImageWidget(),
        SliverGap(25),
        WelcomeBackWidget(),
        SliverGap(5),
        EnterYourAccountTextWidget(),
        SliverGap(20),
        EmailTextFieldWidget(),
        SliverGap(14),
        PasswordTextFieldWidget(),
        SliverGap(13),
        ForgetPasswordWidget(),
        SliverGap(15),
        LoginButtonWidget(),
        SliverGap(30),
        ContinueWithGoogleTextWidget(),
        SliverGap(20),
        ContinueWithGoogleButtonWidget(),
        SliverGap(5),
        DoNotHaveAnAccountWidget(),
      ],
    );
  }
}
