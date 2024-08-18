import 'package:flutter/material.dart';

class AddCoffeeToCartWidget extends StatelessWidget {
  const AddCoffeeToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //todo: add coffee to cart logic goes here
      },
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffA9612F),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
