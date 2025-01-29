import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static Color gradientColorA = Color(0xFFFFFFFF);
  static Color gradientColorB = Color(0xFF000000);

  ThemeData getTheme(String themeName) {
    if (themeName == 'darkTheme') {
      gradientColorA = Color(0xFFFFFFFF);
      gradientColorB = Color(0xFF000000);
      return _darkTheme;
    } else if (themeName == 'lightTheme') {
      gradientColorA = Color(0xFF000000);
      gradientColorB = Color(0xFFFFFFFF);
      return _lightTheme;
    } else {
      return _lightTheme;
    }
  }

  final _darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(foregroundColor: Colors.black),
    dividerColor: Colors.black12,
  );

  final _lightTheme = ThemeData(
    brightness: Brightness.light,
    dividerColor: Colors.white54,
    disabledColor: Colors.grey,
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(foregroundColor: Colors.white),
    fontFamily: 'Simplifica',
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
  );
}

class ManropeSchrift extends StatelessWidget {
  const ManropeSchrift({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Mein Name ist Hans Georg Kastersen und das ist mein Schrift style",
      style: GoogleFonts.manrope(),
    );
  }
}
