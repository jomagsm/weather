import 'package:flutter/material.dart';
import 'package:weatther2/theme/color_theme.dart';

var shadow = [
  Shadow(
    blurRadius: 10.0,
    color: Colors.grey,
    offset: Offset(1.0, 1.0),
  ),
  Shadow(
    color: Colors.grey,
    blurRadius: 10.0,
    offset: Offset(1.0, 1.0),
  ),
];

class TextThemes {
  static var h4 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: ColorPalette.white,
    shadows: shadow,
  );
  static var h3 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    color: ColorPalette.white,
    shadows: shadow,
  );
  static var time = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.normal,
    color: ColorPalette.white,
    shadows: shadow,
  );
  static var temp = TextStyle(
    fontSize: 80,
    fontWeight: FontWeight.normal,
    color: ColorPalette.white,
    shadows: shadow,
  );
}
