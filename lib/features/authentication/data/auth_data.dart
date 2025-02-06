import 'package:ldj_app/features/authentication/models/user.dart';

abstract class AuthData {
  UserId getUser();

  void createUser(String pseudonym, String password, String email);
}

class UserAuthMock implements AuthData {
  @override
  UserId getUser() {
    return UserId(
        pseudonym: 'Dart Legend',
        passwort: '1234',
        email: "Legend-Dart@mail.com");
  }

  @override
  void createUser(String pseudonym, String passwort, String email) {}
}
