import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/models/coffee_model.dart';
import 'package:coffee_app/features/favourites/presentation/favourite/favourite_cubit.dart';
import 'package:coffee_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../favourites/presentation/bloc/get_favourite/get_favourite_bloc.dart';

class AddCoffeeToFavouriteWidget extends StatelessWidget {
  const AddCoffeeToFavouriteWidget({super.key, required this.coffee});
  final CoffeeModel coffee;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey,
        gradient: LinearGradient(
          colors: [
            const Color(0xffFFFFFF),
            const Color(0xffFFFFFF).withOpacity(0.2),
          ],
        ),
      ),
      child: BlocBuilder<FavouriteCubit, FavouriteState>(
        builder: (context, state) {
          return GestureDetector(
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
              height: 20.h,
              width: 20.w,
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                context.colors.textColor!,
                BlendMode.srcIn,
              ),
            ),
          );
        },
      ),
    );
  }
}
