abstract class FirestorUserAbstract {
  Future<bool> setUser(
    String name,
    dynamic email,
  );
  Future<String> getUser(
    String name,
    dynamic email,
  );
  Future<String> updateUser(
    String name,
    dynamic emeil,
  );
  Future<String> creatUser(
    String name,
    dynamic email,
  );
  Future<String> deletUser(
    String name,
    dynamic email,
  );
}
