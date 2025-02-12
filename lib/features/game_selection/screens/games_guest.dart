import 'package:flutter/material.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/screens/spezial_games.dart';
import 'package:ldj_app/features/game_selection/widgets/game_spezifikation.dart';
import 'package:ldj_app/features/game_selection/widgets/my_app_top_bars/top_bar_icons.dart';
import 'package:ldj_app/features/game_selection/widgets/my_container.dart';
import 'package:ldj_app/shared/screens/tips_tricks.dart';

class GamesGuestScreen extends StatelessWidget {
  const GamesGuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          MyThemeZwei(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              TopBarIcons(),
              SizedBox(
                height: 20,
              ),
              MyContainer(
                height: 60,
                width: 220,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameSpezifikation(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Spiele",
                      style: TextStyle(
                          color: Color(0xFFEE0E47),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              MyContainer(
                height: 60,
                width: 220,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SpezialGames(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Spezial Spiele",
                      style: TextStyle(
                          color: Color(0xFFEE0E47),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              MyContainer(
                width: 220,
                height: 60,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tipps(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Tipps",
                      style: TextStyle(
                          color: Color(0xFFEE0E47),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
