import 'package:coffee_app/core/routes/routes_constants.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_grid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/utils.dart';

class CoffeeGridWidget extends StatelessWidget {
  const CoffeeGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 15.w,
          childAspectRatio: 0.7,
        ),
        itemCount: Utils.allCoffee.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.pushNamed(
                Routes.coffeeDetails.name,
                pathParameters: {'id': '${Utils.allCoffee[index].id}'},
              );
            },
            child: CoffeeGridItemWidget(
              coffeeModel: Utils.allCoffee[index],
            ),
          );
        },
      ),
    );
  }
}
