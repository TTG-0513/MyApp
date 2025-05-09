import 'package:flutter/material.dart';
import 'package:ldj_app/config/my_theme_zwei.dart';
import 'package:ldj_app/features/game_selection/screens/dart_score_screen2.dart';
import 'package:ldj_app/provider/gamesettings_state.dart';
import 'package:provider/provider.dart';

class DartCounter2 extends StatelessWidget {
  const DartCounter2({super.key});

  @override
  Widget build(BuildContext context) {
    final GamesettingsState state = Provider.of<GamesettingsState>(context);
    return Scaffold(
      body: Stack(
        children: [
          MyThemeZwei(),
          DartScoreScreen2(int.parse(state.points), (state.inn), (state.out))
        ],
      ),
    );
  }
}
