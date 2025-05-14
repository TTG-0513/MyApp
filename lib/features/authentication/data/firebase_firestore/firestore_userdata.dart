import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirestoreUserAbstract {
  FirestoreUserAbstract(FirebaseFirestore db);

  Future<bool> createUser(
    String name,
    String email,
  );
  Future<bool> checkUser(String email);

  Future<String> getUser(
    String name,
    String email,
  );
  Future<String> updateUser(
    String name,
    String emeil,
  );
  Future<String> deletUser(
    String email,
  );
}
