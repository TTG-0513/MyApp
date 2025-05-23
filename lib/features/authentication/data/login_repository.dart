import 'package:firebase_auth/firebase_auth.dart';

class LoginRepository {
  LoginRepository(this.auth);
  final FirebaseAuth auth;

  // Um den Stream zuzuhören
  Stream<User?> get onAuthChanged => auth.authStateChanges();

  //LogIn
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

  //LogOut
  Future<void> logOut() async {
    await auth.signOut();
  }
}
