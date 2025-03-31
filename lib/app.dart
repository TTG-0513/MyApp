import 'package:flutter/material.dart';
import 'package:ldj_app/features/authentication/data/auth_repo.dart';
import 'package:ldj_app/features/authentication/data/mock_database.dart';
import 'package:ldj_app/features/authentication/data/user_repository.dart';
import 'package:ldj_app/features/authentication/models/user.dart';

import 'package:ldj_app/features/authentication/screens/landing_screen.dart';
import 'package:ldj_app/features/authentication/data/login_repository.dart';

class LDJApp extends StatelessWidget {
  final LoginRepository loginRepository;
  final AuthRepository authRepository;
  LDJApp(
      {super.key,
      required this.user,
      required this.userRepository,
      required this.authRepository,
      required this.loginRepository});

  Future<Map<String, UserId>> user;
  final UserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LandingScreen(
      authRepository: authRepository,
      loginRepository: loginRepository,
      users: null!,
    ));
  }
}
