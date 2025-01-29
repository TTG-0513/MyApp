import 'package:flutter/material.dart';

void main() {
  runApp(const MyThemeEins());
}

class MyThemeEins extends StatelessWidget {
  const MyThemeEins({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color.fromARGB(187, 238, 14, 70),
            Color.fromARGB(151, 238, 14, 70),
            Color.fromARGB(125, 238, 14, 70),
            Color.fromARGB(187, 0, 0, 0),
            Color.fromARGB(151, 0, 0, 0),
            Color.fromARGB(125, 0, 0, 0),
          ],
        ),
      ),
    );
  }
}
