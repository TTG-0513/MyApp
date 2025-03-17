import 'package:ldj_app/features/authentication/data/user_repository.dart';
import 'package:ldj_app/features/authentication/models/user.dart';

class MockUserRepository implements UserRepository {
  @override
  Future<Map<String, UserId>> user() async {
    Future.delayed(const Duration(seconds: 2));
    return {};
  }

  @override
  void getUser(String userName) {}

  @override
  void createUser(Future<Map<String, UserId>> user) {}

  @override
  void deletUser(Future<Map<String, UserId>> user) {}

  @override
  void updateUser(Future<Map<String, UserId>> user) {}
}
