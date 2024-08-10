import 'package:coffee_app/core/extensions/asset_extension.dart';
import 'package:coffee_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../extensions/color_extenions.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    brightness: Brightness.light,
  ),
  extensions: const <ThemeExtension<dynamic>>[
    AssetsExtension.light,
    ColorExtensions.light,
  ],
);
ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.darkBrown,
    brightness: Brightness.dark,
  ),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.aBeeZee(),
  ),
  extensions: const <ThemeExtension<dynamic>>[
    AssetsExtension.dark,
    ColorExtensions.dark
  ],
);
