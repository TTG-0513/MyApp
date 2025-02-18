import 'package:ldj_app/features/authentication/data/user_repository.dart';
import 'package:ldj_app/features/authentication/models/user.dart';

class MockUserRepository implements UserRepository {
  @override
  Future<Map<String, UserId>> user() async {
    return user();
  }

  @override
  void createUser(Map<String, UserId> user) {}

  @override
  void deletUser(String pseudonym, String passwort, String email) {}

  @override
  void updateUser(String pseudonym, String passwort, String email) {}
}
