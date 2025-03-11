import 'package:ldj_app/features/authentication/models/user.dart';

abstract class UserRepository {
  Future<Map<String, UserId>> user();

  void getUser(String userName);

  void createUser(Future<Map<String, UserId>> user);

  void deletUser(Future<Map<String, UserId>> user);

  void updateUser(Future<Map<String, UserId>> user);
}
