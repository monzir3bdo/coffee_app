import 'package:coffee_app/core/app/bloc/app_cubit.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoffeeToppingsWidget extends StatelessWidget {
  const CoffeeToppingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 7.5),
      child: Text(
        'With Chocolate',
        style: medium14.copyWith(
          fontSize: 12,
          color: context.read<AppCubit>().isDarkMode
              ? const Color(0xffF0CEAB)
              : const Color(0xff50555C),
        ),
      ),
    );
  }
}
