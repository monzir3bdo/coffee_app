import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  bool isDarkMode = false;
  AppCubit() : super(const AppState.initial());
  //Change Theme
  void changeTheme() {
    isDarkMode = !isDarkMode;
    emit(AppState.themeChanged(isDark: isDarkMode));
  }
}
