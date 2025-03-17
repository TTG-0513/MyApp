import 'package:flutter/material.dart';
import 'package:ldj_app/config/light_and_dark/change_mode.dart';
import 'package:ldj_app/config/light_and_dark/components/theme_provider.dart';
import 'package:ldj_app/config/light_and_dark/homley_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const ChangeMode(),
  ));
}
