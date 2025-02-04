import 'package:flutter/material.dart';
import 'package:ldj_app/features/authentication/screens/landing_screen.dart';
import 'package:ldj_app/features/game_selection/screens/user_history.dart';

class LDJApp extends StatelessWidget {
  const LDJApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserHistory();
  }
}
