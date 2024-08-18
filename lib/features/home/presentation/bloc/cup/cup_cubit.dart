import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../widgets/coffee_details/coffee_size_item_widget.dart';

part 'cup_cubit.freezed.dart';
part 'cup_state.dart';

class CupCubit extends Cubit<CupState> {
  CupCubit() : super(const CupState.initial());
  CoffeeSize selectedSize = CoffeeSize.short;
  void changeCupSize(CoffeeSize size) {
    selectedSize = size;
    emit(CupState.cupSizeChanged(coffeeSize: selectedSize));
  }
}
