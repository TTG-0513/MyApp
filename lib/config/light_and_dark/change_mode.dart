import 'package:flutter/material.dart';
import 'package:ldj_app/config/light_and_dark/components/light_dark_theme.dart';
import 'package:ldj_app/config/light_and_dark/components/theme_provider.dart';
import 'package:ldj_app/config/light_and_dark/homley_page.dart';
import 'package:provider/provider.dart';

class ChangeMode extends StatelessWidget {
  const ChangeMode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomleyPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
