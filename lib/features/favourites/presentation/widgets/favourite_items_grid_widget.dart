import 'package:coffee_app/core/database/hive_data_base.dart';
import 'package:coffee_app/core/widgets/empty_widget.dart';
import 'package:coffee_app/features/favourites/presentation/bloc/get_favourite/get_favourite_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/routes_constants.dart';
import '../../../home/presentation/widgets/coffee_grid_item_widget.dart';

class FavouriteItemsGridWidget extends StatelessWidget {
  const FavouriteItemsGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFavouriteBloc, GetFavouriteState>(
      builder: (context, state) {
        return state.maybeWhen(
          empty: () {
            return const SliverToBoxAdapter(child: EmptyWidget());
          },
          orElse: () {
            return const SliverToBoxAdapter(child: CircularProgressIndicator());
          },
          success: (favourites) {
            return SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0),
              sliver: SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15.h,
                  crossAxisSpacing: 15.w,
                  childAspectRatio: 0.7,
                ),
                itemCount:
                    HiveDatabase.instance.favouriteCoffeeBox!.values.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.pushNamed(
                        Routes.coffeeDetails.name,
                        pathParameters: {'id': '${favourites[index].id}'},
                      );
                    },
                    child: CoffeeGridItemWidget(
                      coffeeModel: favourites[index],
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
