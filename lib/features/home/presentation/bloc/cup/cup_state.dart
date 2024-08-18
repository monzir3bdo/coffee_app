part of 'cup_cubit.dart';

@freezed
class CupState with _$CupState {
  const factory CupState.initial() = _Initial;
  const factory CupState.cupSizeChanged({required CoffeeSize coffeeSize}) =
      _CupSizeChanged;
}
