import 'package:flutter/material.dart';
import 'package:ldj_app/features/authentication/repositories/dart_counter_test2.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';

class TopBarDart2 extends StatelessWidget {
  const TopBarDart2({
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
              Navigator.of(context).pop();
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
                MaterialPageRoute(builder: (context) => DartCounterTest2()),
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
