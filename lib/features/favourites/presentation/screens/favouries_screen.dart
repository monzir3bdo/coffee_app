import 'package:coffee_app/features/favourites/presentation/widgets/favourite_items_grid_widget.dart';
import 'package:coffee_app/features/favourites/presentation/widgets/favourite_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverGap(10.h),
        const FavouriteTextWidget(),
        SliverGap(26.h),
        const FavouriteItemsGridWidget(),
        SliverGap(20.h),
      ],
    );
  }
}
