import 'package:coffee_app/core/models/coffee_model.dart';
import 'package:coffee_app/features/cart/data/models/cart_model.dart';
import 'package:coffee_app/features/cart/data/models/coffee_order_model.dart';
import 'package:coffee_app/features/home/presentation/widgets/coffee_details/coffee_size_item_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDatabase {
  HiveDatabase._();
  static final HiveDatabase instance = HiveDatabase._();
  factory HiveDatabase() => instance;
  Box<CoffeeModel>? favouriteCoffeeBox;
  Box<CartModel>? cartCoffeeBox;
  Future<void> init() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(CoffeeModelAdapter())
      ..registerAdapter(CoffeeOrderModelAdapter())
      ..registerAdapter(CartModelAdapter())
      ..registerAdapter(CoffeeSizeAdapter());
    favouriteCoffeeBox = await Hive.openBox('coffees');
    cartCoffeeBox = await Hive.openBox('cart');
  }
}
