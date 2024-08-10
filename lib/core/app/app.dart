import 'package:coffee_app/core/routes/routes_manager.dart';
import 'package:coffee_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        routerConfig: router,
        darkTheme: darkTheme,
        theme: lightTheme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
