import 'package:flutter/cupertino.dart';

extension BuildContextExtensions on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;
}
