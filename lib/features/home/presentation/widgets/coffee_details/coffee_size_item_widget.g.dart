// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_size_item_widget.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoffeeSizeAdapter extends TypeAdapter<CoffeeSize> {
  @override
  final int typeId = 3;

  @override
  CoffeeSize read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CoffeeSize.short;
      case 1:
        return CoffeeSize.tall;
      case 2:
        return CoffeeSize.grande;
      case 3:
        return CoffeeSize.venti;
      default:
        return CoffeeSize.short;
    }
  }

  @override
  void write(BinaryWriter writer, CoffeeSize obj) {
    switch (obj) {
      case CoffeeSize.short:
        writer.writeByte(0);
        break;
      case CoffeeSize.tall:
        writer.writeByte(1);
        break;
      case CoffeeSize.grande:
        writer.writeByte(2);
        break;
      case CoffeeSize.venti:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoffeeSizeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
