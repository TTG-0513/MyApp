import 'package:flutter/material.dart';
import 'package:ldj_app/Features/my_theme_zwei.dart';

void main() {
  runApp(const TipsTricks());
}

class TipsTricks extends StatelessWidget {
  const TipsTricks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Stack(
      children: [
        MyThemeZwei(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            Image.asset("assets/images/Der Stand.png"),
            Image.asset("assets/images/Beschreibung Stand.png"),
            Image.asset("assets/images/Der Wurf.png"),
            Image.asset("assets/images/Beschreibung Wurf.png"),
            Image.asset("assets/images/Aussehen.png")
          ],
        )
      ],
    ));
  }
}
