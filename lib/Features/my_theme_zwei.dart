import 'package:flutter/material.dart';

void main() {
  runApp(const MyThemeZwei());
}

class MyThemeZwei extends StatelessWidget {
  const MyThemeZwei({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color.fromARGB(170, 238, 14, 70),
              Color.fromARGB(0, 0, 0, 0),
              Color.fromARGB(0, 0, 0, 0),
              Color.fromARGB(170, 238, 14, 70),
            ],
          ),
        ),
      ),
    );
  }
}
