import 'package:coffee_app/core/app/bloc/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection_container.dart';
import 'core/app/app.dart';

void main() async {
  await setupContainer();
  runApp(BlocProvider(
    create: (context) => AppCubit(),
    child: const App(),
  ));
}
