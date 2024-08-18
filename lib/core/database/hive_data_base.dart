import 'package:coffee_app/core/models/coffee_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDatabase {
  HiveDatabase._();
  static final HiveDatabase instance = HiveDatabase._();
  factory HiveDatabase() => instance;
  Box<CoffeeModel>? favouriteCoffeeBox;
  Box<CoffeeModel>? cartCoffeeBox;
  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(CoffeeModelAdapter());
    favouriteCoffeeBox = await Hive.openBox('coffees');
    favouriteCoffeeBox = await Hive.openBox('cart');
  }
}
