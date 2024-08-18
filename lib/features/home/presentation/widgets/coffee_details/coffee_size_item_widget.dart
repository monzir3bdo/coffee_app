import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_details/coffee_cup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

enum CoffeeSize {
  short,
  tall,
  grande,
  venti,
}

class CoffeeSizeItemWidget extends StatelessWidget {
  const CoffeeSizeItemWidget(
      {super.key,
      required this.coffeeSize,
      required this.isSelected,
      this.onTap});
  final CoffeeSize coffeeSize;
  final bool isSelected;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    switch (coffeeSize) {
      case CoffeeSize.short:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CoffeeCupWidget(
              isSelected: isSelected,
              height: 37.h,
              width: 28.w,
              onTap: onTap,
            ),
            const Gap(7),
            RichText(
              text: TextSpan(
                text: 'Short\t ',
                style: medium14.copyWith(
                  color: context.colors.textColor,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: '8fl OZ ',
                    style: regular12.copyWith(
                        fontSize: 10, color: const Color(0xffA9612F)),
                  ),
                ],
              ),
            ),
          ],
        );
      case CoffeeSize.tall:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CoffeeCupWidget(
                isSelected: isSelected,
                height: 43.h,
                width: 32.w,
                onTap: onTap),
            const Gap(7),
            RichText(
              text: TextSpan(
                text: 'Tall\t ',
                style: medium14.copyWith(
                  color: context.colors.textColor,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: '12fl OZ ',
                    style: regular12.copyWith(
                        fontSize: 10, color: const Color(0xffA9612F)),
                  ),
                ],
              ),
            ),
          ],
        );
      case CoffeeSize.grande:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CoffeeCupWidget(
                isSelected: isSelected,
                height: 47.h,
                width: 35.w,
                onTap: onTap),
            const Gap(7),
            RichText(
              text: TextSpan(
                text: 'Grande\t ',
                style: medium14.copyWith(
                  color: context.colors.textColor,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: '16fl OZ ',
                    style: regular12.copyWith(
                        fontSize: 10, color: const Color(0xffA9612F)),
                  ),
                ],
              ),
            ),
          ],
        );
      case CoffeeSize.venti:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CoffeeCupWidget(
                isSelected: isSelected, height: 56, width: 42, onTap: onTap),
            const Gap(7),
            RichText(
              text: TextSpan(
                text: 'Venti\t ',
                style: medium14.copyWith(
                  color: context.colors.textColor,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: '20fl OZ ',
                    style: regular12.copyWith(
                        fontSize: 10, color: const Color(0xffA9612F)),
                  ),
                ],
              ),
            )
          ],
        );
      default:
        return Text('Invalid Size');
    }
  }
}
