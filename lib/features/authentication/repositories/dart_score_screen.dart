import 'package:flutter/material.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/screens/dart_score_screen1.dart';
import 'package:ldj_app/provider/gamesettings_state.dart';
import 'package:provider/provider.dart';

class DartCounter extends StatelessWidget {
  const DartCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final GamesettingsState state = Provider.of<GamesettingsState>(context);
    return Scaffold(
      body: Stack(
        children: [
          MyThemeZwei(),
          DartScoreScreen1(int.parse(state.points)),
        ],
      ),
    );
  }
}
