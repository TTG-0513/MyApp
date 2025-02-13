import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorSchemeSeed: Color(0xFFFFFFFF),
  primaryColor: Color(0xFFEE0E47),
  primaryColorLight: Color.fromARGB(166, 255, 255, 255),
);

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: Color(0xFF000000),
    primaryColor: Color.fromARGB(255, 191, 114, 133),
    primaryColorDark: Color.fromARGB(143, 208, 17, 17));
