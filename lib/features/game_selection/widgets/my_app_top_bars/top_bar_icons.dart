import 'package:flutter/material.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';

class TopBarIcons extends StatelessWidget {
  const TopBarIcons({
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
