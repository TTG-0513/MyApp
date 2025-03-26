import 'package:flutter/material.dart';
import 'package:ldj_app/features/authentication/data/mock_database.dart';
import 'package:ldj_app/features/authentication/data/user_repository.dart';
import 'package:ldj_app/features/authentication/models/user.dart';

import 'package:ldj_app/features/authentication/screens/landing_screen.dart';
import 'package:ldj_app/features/authentication/widgets/login_repository.dart';

class LDJApp extends StatelessWidget {
  final LoginRepository loginRepository;
  LDJApp({super.key, required this.user, required this.userRepository});

  Future<Map<String, UserId>> user;
  final UserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return LandingScreen(
      userRepository: userRepository,
    );
  }
}
