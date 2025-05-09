import 'package:flutter/material.dart';
import 'package:ldj_app/features/authentication/repositories/dart_score_screen.dart';
import 'package:ldj_app/features/authentication/repositories/dart_score_screen2.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';
import 'package:ldj_app/features/game_selection/widgets/game_spezifikation.dart';

class TopBarDart1 extends StatelessWidget {
  const TopBarDart1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 70,
          width: 60,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => GameSpezifikation()),
              );
            },
            icon: Icon(Icons.arrow_back),
            color: Color(0xFFFFFFFF),
          ),
        ),
        SizedBox(
          height: 70,
          width: 60,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DartCounter()),
              );
            },
            icon: Icon(Icons.ads_click_outlined),
            color: Color(0xFFEE0E47),
          ),
        ),
        SizedBox(
          height: 70,
          width: 60,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
            icon: Icon(Icons.settings),
            color: Color(0xFFFFFFFF),
          ),
        ),
      ],
    );
  }
}
