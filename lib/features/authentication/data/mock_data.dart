import 'package:ldj_app/features/authentication/models/user.dart';

abstract class AuthData {
  UserId getUser();

  void createUser(String pseudonym, String password, String email);
  void deletUser(String pseudonym, String password, String email);
  void updateUser(String pseudonym, String password, String email);
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

  @override
  void deletUser(String pseudonym, String passwort, String email) {}

  @override
  void updateUser(String pseudonym, String passwort, String email) {}
}
