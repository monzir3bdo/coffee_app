import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;
Future<void> setupContainer() async {
  final navigationKey = GlobalKey<NavigatorState>();
  sl.registerSingleton(navigationKey);
}
