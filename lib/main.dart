import 'package:flutter/material.dart';
import 'package:ldj_app/app.dart';
import 'package:ldj_app/features/authentication/data/mock_database.dart';
import 'package:ldj_app/features/authentication/data/user_repository.dart';
import 'package:ldj_app/features/game_selection/screens/dart_screen.dart';
import 'package:ldj_app/features/authentication/screens/landing_screen.dart';
import 'package:ldj_app/features/authentication/widgets/my_dart_rechner_gross.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  UserRepository userMockDatabase = MockUserRepository();
  final repo = userMockDatabase;
  final user = repo.user();

  runApp(const MaterialApp(
      home: MyDartRechnerGross())); //(userRepository: MockUserRepository(),)
}
