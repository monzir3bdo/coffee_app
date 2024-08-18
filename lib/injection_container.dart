import 'package:coffee_app/core/screens/main/bloc/main_cubit.dart';
import 'package:coffee_app/features/favourites/presentation/bloc/get_favourite/get_favourite_bloc.dart';
import 'package:coffee_app/features/favourites/presentation/favourite/favourite_cubit.dart';
import 'package:coffee_app/features/home/presentation/bloc/coffee_description/coffee_description_cubit.dart';
import 'package:coffee_app/features/home/presentation/bloc/cup/cup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;
Future<void> setupContainer() async {
  final navigationKey = GlobalKey<NavigatorState>();

  sl.registerSingleton(navigationKey);

  await initCoffeeDescription();
  await initMain();
}

Future<void> initMain() async {
  sl.registerFactory(() => MainCubit());
}

Future<void> initCoffeeDescription() async {
  sl
    ..registerFactory(() => CoffeeDescriptionCubit())
    ..registerFactory(() => FavouriteCubit())
    ..registerSingleton(GetFavouriteBloc())
    ..registerFactory(() => CupCubit());
}
