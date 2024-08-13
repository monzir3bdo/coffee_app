import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());
  int activeCoffeeType = -1;
  void changeCoffeeType(int currentIndex) {
    activeCoffeeType = currentIndex;
    emit(HomeState.coffeeSliderChanged(id: activeCoffeeType));
  }
}
