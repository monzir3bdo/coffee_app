import 'package:coffee_app/core/extensions/asset_extension.dart';
import 'package:coffee_app/core/extensions/color_extenions.dart';
import 'package:flutter/material.dart';

extension BuildContextExtneions on BuildContext {
  AssetsExtension get image => Theme.of(this).extension<AssetsExtension>()!;
  ColorExtensions get colors => Theme.of(this).extension<ColorExtensions>()!;

  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;
}
