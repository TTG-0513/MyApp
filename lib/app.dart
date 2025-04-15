import 'package:flutter/material.dart';
import 'package:ldj_app/features/authentication/data/auth_repo.dart';
import 'package:ldj_app/features/authentication/data/firebase_firestore/firestore_user_repo.dart';
import 'package:ldj_app/features/authentication/data/firebase_firestore/firestore_userdata.dart';
import 'package:ldj_app/features/authentication/data/user_repository.dart';
import 'package:ldj_app/features/authentication/models/user.dart';
import 'package:ldj_app/features/authentication/screens/landing_screen.dart';
import 'package:ldj_app/features/authentication/data/login_repository.dart';

class LDJApp extends StatelessWidget {
  final LoginRepository loginRepository;
  final AuthRepository authRepository;
  final FirestoreUserAbstract firestoreUserAbstract;

  LDJApp({
    super.key,
    required this.user,
    required this.userRepository,
    required this.authRepository,
    required this.loginRepository,
    required this.firestoreUserAbstract,
  });

  Future<Map<String, UserId>> user;
  final UserRepository userRepository;

  // ignore: prefer_typing_uninitialized_variables

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LandingScreen(
      authRepository: authRepository,
      loginRepository: loginRepository,
      firestoreUserAbstract: firestoreUserAbstract,
    ));
  }
}
