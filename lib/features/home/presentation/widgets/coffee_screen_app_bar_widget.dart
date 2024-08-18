import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/models/coffee_model.dart';
import 'package:coffee_app/core/theme/app_text_styles.dart';
import 'package:coffee_app/features/favourites/presentation/bloc/get_favourite/get_favourite_bloc.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../favourites/presentation/favourite/favourite_cubit.dart';

class CoffeeScreenAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CoffeeScreenAppBarWidget({super.key, required this.coffee});

  final CoffeeModel coffee;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        coffee.name,
        style: semiBold16.copyWith(
          fontSize: 16,
          color: context.colors.textColor,
        ),
      ),
      actions: [
        //todo: Implement the adding to favourite logic
        BlocBuilder<FavouriteCubit, FavouriteState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsetsDirectional.only(end: 24.0),
              child: GestureDetector(
                onTap: () {
                  context.read<FavouriteCubit>().toggleFavourite(coffee);
                  context
                      .read<GetFavouriteBloc>()
                      .add(const GetFavouriteEvent.getAllFavouritesEvent());
                },
                child: SvgPicture.asset(
                  context.read<FavouriteCubit>().isFavourite(coffee.id)
                      ? Assets.svgHeartFull
                      : Assets.svgHeart,
                  colorFilter: ColorFilter.mode(
                    context.colors.textColor!,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 60.h);
}
