import 'package:flutter/material.dart';
import 'package:ldj_app/features/authentication/screens/landing_screen.dart';
import 'package:ldj_app/features/game_selection/repositories/setting_beispiel.dart';
import 'package:ldj_app/features/game_selection/repositories/slider_button.dart';
import 'package:ldj_app/features/game_selection/screens/language_screen.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';
import 'package:ldj_app/features/game_selection/screens/spezial_games.dart';
import 'package:ldj_app/features/game_selection/screens/user_history.dart';
import 'package:ldj_app/features/game_selection/widgets/game_spezifikation.dart';

class LDJApp extends StatelessWidget {
  const LDJApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingScreen();
  }
}
