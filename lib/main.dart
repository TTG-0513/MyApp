import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ldj_app/app.dart';
import 'package:ldj_app/features/authentication/data/firebase_auth_repo.dart';
import 'package:ldj_app/features/authentication/data/mock_database.dart';
import 'package:ldj_app/features/authentication/data/user_repository.dart';
import 'package:ldj_app/features/authentication/data/login_repository.dart';
import 'package:ldj_app/features/game_selection/screens/dart_screen.dart';
import 'package:ldj_app/features/authentication/screens/landing_screen.dart';
import 'package:ldj_app/features/authentication/widgets/my_dart_rechner_gross.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final AuthRepository authRepository = FirebaseAuthRepository(auth);

  final loginRepository = LoginRepository(auth);

  final UserRepository userMockDatabase = MockUserRepository();
  final repo = userMockDatabase;
  final user = repo.user();

  runApp(LDJApp(
      authRepository: authRepository,
      loginRepository: loginRepository,
      user: user,
      userRepository: userMockDatabase));
  //(userRepository: MockUserRepository(),)
}
