import 'package:hive/hive.dart';

part 'coffee_model.g.dart';

@HiveType(typeId: 0)
class CoffeeModel extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String toppings;
  @HiveField(3)
  final String description;
  @HiveField(4)
  final Map<String, dynamic> prices;
  @HiveField(5)
  final num rating;
  @HiveField(6)
  final num numberOfReviews;
  @HiveField(7)
  final String image;

  CoffeeModel({
    required this.id,
    required this.name,
    required this.toppings,
    required this.description,
    required this.prices,
    required this.rating,
    required this.numberOfReviews,
    required this.image,
  });
}
