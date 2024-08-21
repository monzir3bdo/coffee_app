import 'package:coffee_app/core/database/hive_data_base.dart';
import 'package:coffee_app/core/extensions/build_context_extneions.dart';
import 'package:coffee_app/core/widgets/empty_widget.dart';
import 'package:coffee_app/features/cart/presentation/bloc/get_cart/get_cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'cart_item_widget.dart';

class CartListWidget extends StatelessWidget {
  const CartListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: context.screenHeight * 0.5,
        child: BlocBuilder<GetCartBloc, GetCartState>(
          builder: (context, state) {
            return state.maybeWhen(orElse: () {
              return const SliverToBoxAdapter(
                child: CircularProgressIndicator(),
              );
            }, empty: () {
              return const SliverToBoxAdapter(
                child: EmptyWidget(),
              );
            }, success: (cart) {
              return ListView.separated(
                itemCount: HiveDatabase.instance.cartCoffeeBox!.length,
                itemBuilder: (context, index) {
                  return CartItemWidget(
                    coffeeOrder: cart.coffees[index],
                    coffeeModel: cart.coffees[index].coffeeModel![index],
                  );
                },
                separatorBuilder: (context, index) {
                  return Gap(10.h);
                },
              );
            });
          },
        ),
      ),
    );
  }
}
