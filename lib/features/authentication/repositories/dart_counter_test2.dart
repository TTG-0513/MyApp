import 'package:flutter/material.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/authentication/widgets/my_dart_rechner_gross.dart';

class DartCounterTest2 extends StatelessWidget {
  const DartCounterTest2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyThemeZwei(),
          MyDartRechnerGross(),
        ],
      ),
    );
  }
}
