import 'package:flutter/material.dart';

void main() {
  runApp(const LDJApp());
}

class LDJApp extends StatelessWidget {
  const LDJApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
