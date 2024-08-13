import 'package:coffee_app/core/extensions/strings_extension.dart';
import 'package:coffee_app/features/home/data/models/coffee_type_model.dart';
import 'package:coffee_app/generated/assets.dart';

abstract class CoffeeTypeSliderDataSources {
  static List<CoffeeTypeModel> types = [
    CoffeeTypeModel(
        coffeeName: 'Espresso'.hardCoded, coffeeImage: Assets.svgEspresso),
    CoffeeTypeModel(
        coffeeName: 'Macchiato'.hardCoded, coffeeImage: Assets.svgMacchiato),
    CoffeeTypeModel(
        coffeeName: 'Corretoo'.hardCoded, coffeeImage: Assets.svgCorretoo),
  ];
}
