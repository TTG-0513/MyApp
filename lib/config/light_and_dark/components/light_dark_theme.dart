import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      primary: const Color.fromARGB(255, 12, 1, 8),
      primaryContainer: const Color.fromARGB(255, 15, 22, 233),
      secondary: const Color.fromARGB(255, 10, 227, 72)),
);

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: const Color.fromARGB(255, 94, 12, 227),
      primaryContainer: const Color.fromARGB(255, 224, 13, 13),
      secondary: const Color.fromARGB(255, 215, 226, 5),
    ));
