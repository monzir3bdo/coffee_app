// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_order_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoffeeOrderModelAdapter extends TypeAdapter<CoffeeOrderModel> {
  @override
  final int typeId = 1;

  @override
  CoffeeOrderModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoffeeOrderModel(
      coffeeModel:
          fields[0] == null ? [] : (fields[0] as List?)?.cast<CoffeeModel>(),
      totalPrice: fields[2] as num,
      quantity: fields[1] as int,
      coffeeSize: fields[3] as CoffeeSize?,
    );
  }

  @override
  void write(BinaryWriter writer, CoffeeOrderModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.coffeeModel)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.totalPrice)
      ..writeByte(3)
      ..write(obj.coffeeSize);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoffeeOrderModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
