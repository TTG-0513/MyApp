import 'package:ldj_app/features/authentication/models/user.dart';

abstract class UserRepository {
  Future<Map<String, UserId>> user();

  void createUser(Map<String, UserId> user);

  void deletUser(String pseudonym, String password, String email);

  void updateUser(String pseudonym, String password, String email);
}
