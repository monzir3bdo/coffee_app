import 'package:coffee_app/features/home/presentation/widgets/hello_widget.dart';
import 'package:coffee_app/features/home/presentation/widgets/location_widget.dart';
import 'package:coffee_app/features/home/presentation/widgets/search_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/coffe_type_slider.dart';
import '../widgets/coffee_grid_wiget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          HelloWidget(),
          LocationWidget(),
          SearchTextFieldWidget(),
          SliverGap(20),
          CoffeeTypeSlider(),
          SliverGap(20),
          CoffeeGridWidget(),
          SliverGap(20),
          // Add more widgets as needed
        ],
      ),
    );
  }
}
