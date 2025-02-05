import 'package:flutter/material.dart';

void main() {
  runApp(const MyThemeZwei());
}

class MyThemeZwei extends StatelessWidget {
  const MyThemeZwei({
    super.key,
    this.decoration,
    this.alignment,
    this.children,
  });

  final List<Widget>? children;
  final Decoration? decoration;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
