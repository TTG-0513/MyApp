import 'package:flutter/material.dart';
import 'package:ldj_app/features/authentication/screens/landing_screen.dart';

import 'package:ldj_app/features/authentication/screens/signup_screen.dart';
import 'package:ldj_app/features/game_selection/screens/games_guest.dart';
import 'package:ldj_app/features/game_selection/screens/games_screen.dart';
import 'package:ldj_app/features/game_selection/repositories/setting_beispiel.dart';
import 'package:ldj_app/features/game_selection/screens/settings_screen.dart';
import 'package:ldj_app/shared/screens/tips_tricks.dart';

class LDJApp extends StatelessWidget {
  const LDJApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingScreen();
  }
}
