import 'package:coffee_app/features/home/presentation/widgets/add_coffee_to_favourite_widget.dart';
import 'package:flutter/material.dart';

class CoffeeImageAndAddToFavouriteWidget extends StatelessWidget {
  const CoffeeImageAndAddToFavouriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://plus.unsplash.com/premium_photo-1675435644687-562e8042b9db?q=80&w=1049&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          top: 10,
          right: 10,
          child: AddCoffeeToFavouriteWidget(),
        ),
      ],
    );
  }
}
