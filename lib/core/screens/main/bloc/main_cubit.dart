import 'package:bloc/bloc.dart';
import 'package:coffee_app/core/routes/routes_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState.initial());
  List navbarPages = [
    Routes.home.name,
    Routes.cart.name,
    Routes.favourite.name,
    Routes.profile.name,
  ];
  int currentPageIndex = 0;
  void changePage(int pageIndex, BuildContext context) {
    currentPageIndex = pageIndex;
    context.goNamed(navbarPages[pageIndex]);
    emit(MainState.pageChanged(pageIndex: pageIndex));
  }
}
