import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginRepository {
  LoginRepository(this.auth);
  final FirebaseAuth auth;

  Stream<User?> get onAuthChanged => auth.authStateChanges();

  Future<bool> login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      switch (e.code) {
        case "invalid_credentials":
          break;
      }
      return false;
    }
  }

  Future<void> logOut() async {
    await auth.signOut();
  }
}
