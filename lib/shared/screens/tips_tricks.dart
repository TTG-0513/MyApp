import 'package:flutter/material.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';

class Tipps extends StatelessWidget {
  const Tipps({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyThemeZwei(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 70,
                  width: 60,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/images/Der Stand.png"),
                Image.asset("assets/images/Beschreibung Stand.png"),
                Image.asset("assets/images/Der Wurf.png"),
                Image.asset("assets/images/Beschreibung Wurf.png"),
                Image.asset("assets/images/DartDaten.png")
              ],
            )
          ],
        )
      ],
    );
  }
}
