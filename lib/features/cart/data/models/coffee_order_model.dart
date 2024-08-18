import 'package:hive/hive.dart';

import '../../../../core/models/coffee_model.dart';

//todo: add part
part 'coffee_order_model.g.dart';

@HiveType(typeId: 1)
class CoffeeOrderModel extends HiveObject {
  @HiveField(0)
  final CoffeeModel coffeeModel;
  @HiveField(1)
  int quantity;
  @HiveField(2)
  int totalPrice;

  CoffeeOrderModel({
    required this.coffeeModel,
    required this.totalPrice,
    required this.quantity,
  });
}
