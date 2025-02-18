import 'package:flutter/material.dart';
import 'package:ldj_app/app.dart';
import 'package:ldj_app/features/authentication/data/mock_database.dart';
import 'package:ldj_app/features/authentication/data/user_repository.dart';

void main() {
  UserRepository userMockDatabase = MockUserRepository();
  final repo = userMockDatabase;
  final user = repo.user();

  runApp(MaterialApp(
      home: LDJApp(
    user: user,
  )));
}
