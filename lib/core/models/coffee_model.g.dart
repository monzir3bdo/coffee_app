// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoffeeModelAdapter extends TypeAdapter<CoffeeModel> {
  @override
  final int typeId = 0;

  @override
  CoffeeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoffeeModel(
      id: fields[0] as int,
      name: fields[1] as String,
      toppings: fields[2] as String,
      description: fields[3] as String,
      prices: (fields[4] as Map).cast<String, dynamic>(),
      rating: fields[5] as num,
      numberOfReviews: fields[6] as num,
      image: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CoffeeModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.toppings)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.prices)
      ..writeByte(5)
      ..write(obj.rating)
      ..writeByte(6)
      ..write(obj.numberOfReviews)
      ..writeByte(7)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoffeeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
