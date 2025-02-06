import 'package:flutter/material.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/authentication/widgets/my_dart_rechner_klein.dart';

class DartCounterTest extends StatelessWidget {
  const DartCounterTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyThemeZwei(),
          MyDartRechnerKlein(),
        ],
      ),
    );
  }
}
