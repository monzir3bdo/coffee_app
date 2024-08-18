import 'package:coffee_app/features/home/presentation/bloc/coffee_description/coffee_description_cubit.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_screen_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/utils.dart';
import '../../../../injection_container.dart';
import '../refactor/coffee_details_screen_body.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  const CoffeeDetailsScreen({super.key, required this.productId});
  final int productId;
  @override
  Widget build(BuildContext context) {
    final coffee = Utils.allCoffee.elementAt(productId - 1);
    return Scaffold(
      appBar: CoffeeScreenAppBarWidget(coffee: coffee),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => sl<CoffeeDescriptionCubit>(),
          child: CoffeeDetailsScreenBody(
            coffeeModel: coffee,
          ),
        ),
      ),
    );
  }
}
