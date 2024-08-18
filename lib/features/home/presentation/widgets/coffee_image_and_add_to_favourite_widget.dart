import 'package:coffee_app/core/models/coffee_model.dart';
import 'package:coffee_app/features/home/presentation/widgets/add_coffee_to_favourite_widget.dart';
import 'package:flutter/material.dart';

class CoffeeImageAndAddToFavouriteWidget extends StatelessWidget {
  const CoffeeImageAndAddToFavouriteWidget({super.key, required this.coffee});

  final CoffeeModel coffee;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            coffee.image,
            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: AddCoffeeToFavouriteWidget(
            coffee: coffee,
          ),
        ),
      ],
    );
  }
}
