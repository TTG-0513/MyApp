import 'package:flutter/material.dart';

void main() {
  runApp(const MyThemeZwei());
}

class MyThemeZwei extends StatelessWidget {
  const MyThemeZwei({super.key, this.child, this.decoration, this.alignment});

  final Widget? child;
  final Decoration? decoration;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/ThemeTwo.png"),
          ),
        ),
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
