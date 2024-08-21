import 'package:coffee_app/features/cart/data/models/coffee_order_model.dart';
import 'package:hive_flutter/adapters.dart';

part 'cart_model.g.dart';

//todo: add part
@HiveType(typeId: 2)
class CartModel extends HiveObject {
  @HiveField(0)
  List<CoffeeOrderModel> coffees;
  @HiveField(1)
  final num totalPrice;
  @HiveField(2)
  final num deliveryPrice;

  CartModel(
      {required this.coffees,
      required this.totalPrice,
      required this.deliveryPrice});
}
