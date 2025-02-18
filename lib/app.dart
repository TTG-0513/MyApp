import 'package:flutter/material.dart';

import 'package:ldj_app/features/authentication/screens/landing_screen.dart';

class LDJApp extends StatelessWidget {
  const LDJApp({
    super.key,
    required this.user,
  });

  final Future<Map<dynamic, dynamic>> user;

  @override
  Widget build(BuildContext context) {
    return LandingScreen();
  }
}
