import 'package:coffee_app/features/home/presentation/widgets/coffee_details/coffee_size_item_widget.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

import '../../../../core/models/coffee_model.dart';

//todo: add part
part 'coffee_order_model.g.dart';

@HiveType(typeId: 1)
class CoffeeOrderModel extends HiveObject with EquatableMixin {
  @HiveField(0, defaultValue: [])
  List<CoffeeModel>? coffeeModel;
  @HiveField(1)
  int quantity;
  @HiveField(2)
  num totalPrice;
  @HiveField(3)
  CoffeeSize? coffeeSize;

  CoffeeOrderModel(
      {required this.coffeeModel,
      required this.totalPrice,
      required this.quantity,
      required this.coffeeSize});

  @override
  List<Object?> get props => [
        coffeeModel,
        totalPrice,
        quantity,
      ];
}
