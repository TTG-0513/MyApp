import 'package:flutter/material.dart';
import 'package:ldj_app/features/authentication/models/user.dart';

import 'package:ldj_app/features/authentication/screens/landing_screen.dart';

class LDJApp extends StatelessWidget {
  LDJApp({
    super.key,
    required this.user,
  });

  Future<Map<String, UserId>> user;

  @override
  Widget build(BuildContext context) {
    return LandingScreen();
  }
}
